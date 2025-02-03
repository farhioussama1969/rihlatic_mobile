import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/omra_card_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/select_field_component.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/components/select_room_component.dart';
import 'package:rihlatic/app/routes/app_pages.dart';

import '../controllers/omra_booking_page_controller.dart';

class OmraBookingPageView extends GetView<OmraBookingPageController> {
  const OmraBookingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final packageId = 2;
    // final packageId = Get.arguments as int;
    List<Map<String, dynamic>> rooms = [];

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

          String? selectedDepartureId;

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
                            ?.map((date) =>
                                '${date.departureDate!} / ${date.returnDate!}')
                            .toList() ??
                        [],
                    onSelected: (selectedDate) {
                      final selectedDeparture = package.departures?.firstWhere(
                        (date) =>
                            '${date.departureDate!} / ${date.returnDate!}' ==
                            selectedDate,
                      );

                      if (selectedDeparture != null) {
                        selectedDepartureId = selectedDeparture.id.toString();
                      }
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    StringsAssetsConstants.rooms,
                    style: TextStyles.mediumLabelTextStyle(context).copyWith(
                      color: MainColors.textColor(context)!,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SelectRoomComponent(
                    onRoomsUpdated: (updatedRooms) {
                      rooms = updatedRooms;
                    },
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      child: PrimaryButtonComponent(
                        onTap: () {
                          if (selectedDepartureId == null) {
                            Get.snackbar(
                              'Error',
                              'Please select a departure date',
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                            return;
                          }

                          final adultsCount = rooms.fold(
                              0, (sum, room) => sum + (room['adults'] as int));

                          final childWithBedrenCount = rooms.fold(0,
                              (sum, room) => sum + (room['children'] as int));

                          final childrenCount = rooms.fold(0,
                              (sum, room) => sum + (room['children'] as int));

                          final infantsCount = rooms.fold(
                              0, (sum, room) => sum + (room['infants'] as int));

                          Get.toNamed(
                            Routes.OMRA_PAYMENT_PAGE,
                            arguments: {
                              'packageId': packageId,
                              'departureId': int.parse(selectedDepartureId!),
                              'adultsCount': adultsCount,
                              'childrenCount': childrenCount,
                              'childWithBedrenCount': childWithBedrenCount,
                              'infantsCount': infantsCount,
                            },
                          );
                        },
                        text: StringsAssetsConstants.book,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
