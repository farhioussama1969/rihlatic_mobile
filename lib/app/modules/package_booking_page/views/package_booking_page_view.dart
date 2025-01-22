import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/package_card_component.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/select_field_component.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/select_room_component.dart';

import '../controllers/package_booking_page_controller.dart';

class PackageBookingPageView extends GetView<PackageBookingPageController> {
  const PackageBookingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final packageId = 21;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        backgroundColor: MainColors.whiteColor,
        centerTitle: true,
      ),
      body: GetBuilder<PackageBookingPageController>(
        id: GetBuildersIdsConstants.PackagePageDetailsBody,
        init: PackageBookingPageController(),
        builder: (logic) {
          if (!logic.isPackageDetailsLoading && logic.PackageData == null) {
            logic.getPackagePageDetailsData(productId: packageId);
          }

          if (logic.isPackageDetailsLoading) {
            return const Center(child: LoadingComponent());
          }

          final package = logic.PackageData;

          final formattedPrice =
              '${package?.departures!.map((e) => e.priceIni ?? '').toList().reversed.join(' ${StringsAssetsConstants.to} ')}';

          if (package == null) {
            return Center(
              child: Text(
                'No package found',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: MainColors.textColor(context)!,
                ),
              ),
            );
          }

          return SingleChildScrollView(
            child: SizedBox(
                width: 1.sw,
                child: Column(
                  children: [
                    const PackageCardComponent(),
                    Text(
                      StringsAssetsConstants.bookYourTrip,
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SelectFieldComponent(
                      dates: package.departures
                              ?.map((dates) =>
                                  dates.departureDate! +
                                      ' / ' +
                                      dates.returnDate! ??
                                  '')
                              .toList() ??
                          [],
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      StringsAssetsConstants.rooms,
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const SelectRoomComponent(),
                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
