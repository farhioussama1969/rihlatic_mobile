import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/inputs/date_input_component.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/components/pop_ups/bottom_sheet_component.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/hotel_page/controllers/hotel_page_controller.dart';
import 'package:rihlatic/app/modules/hotel_page/views/components/add_quantity_component.dart';

class PackageFiltreComponent extends StatelessWidget {
  final int roomCount = 3;
  final int guestCount = 4;

  const PackageFiltreComponent({super.key});

  void showMe(BuildContext context) {
    BottomSheetComponent.show(
      context,
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: MainColors.whiteColor,
          borderRadius: BorderRadius.circular(15.5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  IconsAssetsConstants.userIcon,
                  color: MainColors.blackColor.withOpacity(0.6),
                ),
                Text(
                  'Room 1',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Adult',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<HotelPageController>(
                      id: '50',
                      builder: (logic) {
                        return AddQuantityComponent(
                          productQuantity: logic.productQuantity,
                          changeSelectedProductQuantity: (value) {
                            logic.changeSelectedProductQuantity(value);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Children',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(1),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<HotelPageController>(
                      id: '50',
                      builder: (logic) {
                        return AddQuantityComponent(
                          productQuantity: logic.productQuantity,
                          changeSelectedProductQuantity: (value) {
                            logic.changeSelectedProductQuantity(value);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            PrimaryButtonComponent(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'Close',
            ),
          ],
        ),
      ),
      height: 0.4.h,
      dismissible: true,
      horizontalMargin: 20.w,
      backgroundColor: MainColors.transparentColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.infinity,
      decoration: BoxDecoration(
        color: MainColors.whiteColor,
        borderRadius: BorderRadius.circular(15.5),
        border:
            Border.all(color: MainColors.textColor(context)!.withOpacity(0.15)),
      ),
      child: Column(
        children: [
          TextInputComponent(
            label: "Destination",
            hint: "airport or city",
            isLabelOutside: true,
            filled: true,
            borderRadius: 15,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: DateInputComponent(
                  label: "Check-in",
                  hint: "Select date",
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: DateInputComponent(
                  label: "Check-out",
                  hint: "Select date",
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                ),
              ),
            ],
          ),
          TextInputComponent(
            onTap: (context) => showMe(context),
            hint: "Room $roomCount & guest $guestCount",
            isLabelOutside: true,
            filled: true,
            borderRadius: 15,
            readOnly: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          ),
          SizedBox(height: 16.h),
          PrimaryButtonComponent(
            onTap: () => showMe(context),
            text: 'Flitre',
          ),
        ],
      ),
    );
  }
}
