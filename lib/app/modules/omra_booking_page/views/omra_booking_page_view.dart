import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/pop_ups/bottom_sheet_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/data/models/omra_room_model.dart';
import 'package:rihlatic/app/data/models/passanger_model.dart';
import 'package:rihlatic/app/modules/home_page/controllers/home_page_controller.dart';
import 'package:rihlatic/app/modules/home_page/views/home_page_view.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/check_user_status_window_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/email_confirmation_window_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/login_window_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/register_window_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/omra_card_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/select_field_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/select_room_component.dart';
import 'package:rihlatic/app/modules/user_controller.dart';

import '../controllers/omra_booking_page_controller.dart';

class OmraBookingPageView extends GetView<OmraBookingPageController> {
  const OmraBookingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final packageId = Get.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        backgroundColor: MainColors.whiteColor,
        centerTitle: true,
      ),
      body: GetBuilder<OmraBookingPageController>(
        id: GetBuildersIdsConstants.OmrasPageBody,
        init: OmraBookingPageController(),
        builder: (logic) {
          if (!logic.isOmraDetailsLoading && logic.OmraData == null) {
            logic.getOmraPageDetailsData(productId: packageId);
          }

          if (logic.isOmraDetailsLoading) {
            return const Center(child: LoadingComponent());
          }

          final package = logic.OmraData;

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
                    const OmraCardComponent(),
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
                                  '${dates.departureDate!} / ${dates.returnDate!}' ??
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
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PrimaryButtonComponent(
                        onTap: () {
                          if (Get.find<UserController>().user == null) {
                            HomePageView().showCheckUserStatusWindow();
                          }
                        },
                        text: StringsAssetsConstants.book,
                      ),
                    ),
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
