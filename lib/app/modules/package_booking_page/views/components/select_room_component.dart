import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:select_field/select_field.dart';

import '../../../packages_page/views/components/add_quantity_component.dart';

final roomOption = [
  'Single',
  'Twin',
  'Twin + child',
  'Twin + 2 child',
];

class SelectRoomComponent extends StatelessWidget {
  const SelectRoomComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final options = roomOption
        .map((roomOption) => Option(label: roomOption, value: roomOption))
        .toList();
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: MainColors.textColor(context)!.withOpacity(0.15))),
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringsAssetsConstants.selectYourRoom,
                  style: TextStyles.mediumBodyTextStyle(context),
                ),
                const SizedBox(height: 8),
                SelectField<String>(
                  options: options,
                  initialOption: Option<String>(
                    label: roomOption[0],
                    value: roomOption[0],
                  ),
                  menuPosition: MenuPosition.below,
                  onTextChanged: (value) => debugPrint(value),
                  onOptionSelected: (option) => debugPrint(option.toString()),
                  inputStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: MainColors.blackColor,
                  ),
                  inputDecoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    filled: true,
                    fillColor: MainColors.inputColor(context),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  menuDecoration: MenuDecoration(
                    margin: const EdgeInsets.only(top: 8),
                    height: 200,
                    alignment: MenuAlignment.center,
                    backgroundDecoration: BoxDecoration(
                      color: MainColors.inputColor(context),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 1),
                          color:
                              MainColors.textColor(context)!.withOpacity(0.3),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    animationDuration: const Duration(milliseconds: 400),
                    buttonStyle: TextButton.styleFrom(
                      fixedSize: const Size(double.infinity, 50),
                      backgroundColor: MainColors.inputColor(context),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: MainColors.blackColor,
                      ),
                    ),
                    separatorBuilder: (context, index) => Divider(
                      height: 1,
                      color: MainColors.textColor(context)!.withOpacity(0.3),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          StringsAssetsConstants.adult,
                          style:
                              TextStyles.mediumLabelTextStyle(context).copyWith(
                            color:
                                MainColors.textColor(context)!.withOpacity(1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: AddQuantityComponent(
                          productQuantity: 50,
                          changeSelectedProductQuantity: (value) {
                            50;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          StringsAssetsConstants.child,
                          style:
                              TextStyles.mediumLabelTextStyle(context).copyWith(
                            color:
                                MainColors.textColor(context)!.withOpacity(1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: AddQuantityComponent(
                          productQuantity: 50,
                          changeSelectedProductQuantity: (value) {
                            50;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          StringsAssetsConstants.infant,
                          style:
                              TextStyles.mediumLabelTextStyle(context).copyWith(
                            color:
                                MainColors.textColor(context)!.withOpacity(1),
                          ),
                        ),
                      ),
                      Expanded(
                        child: AddQuantityComponent(
                          productQuantity: 50,
                          changeSelectedProductQuantity: (value) {
                            50;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextInputComponent(
                  label: StringsAssetsConstants.ageOfChild1,
                  hint: StringsAssetsConstants.enterAgeHere,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(
                  height: 20.h,
                ),
                TextInputComponent(
                  label: StringsAssetsConstants.note,
                  hint: StringsAssetsConstants.enterAdditionalNotes,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
              ],
            ),
          ),
          // height: 0.4.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: PrimaryButtonComponent(
            onTap: () => {null},
            text: StringsAssetsConstants.addRoom,
            backgroundColor: MainColors.inputColor(context)!,
            borderColor: MainColors.primaryColor.withOpacity(0.3),
            textColor: MainColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
