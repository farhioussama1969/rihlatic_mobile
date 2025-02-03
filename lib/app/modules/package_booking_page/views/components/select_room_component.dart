import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/add_quantity_component.dart';
import 'package:select_field/select_field.dart';

final roomOption = [
  'Single',
  'Twin',
  'Twin + child',
  'Twin + 2 child',
];

class SelectRoomComponent extends StatefulWidget {
  const SelectRoomComponent({super.key});

  @override
  State<SelectRoomComponent> createState() => _SelectRoomComponentState();
}

class _SelectRoomComponentState extends State<SelectRoomComponent> {
  final List<Map<String, dynamic>> rooms = [];

  Map<String, dynamic> _getRoomConfig(String roomType) {
    if (roomType == 'Single') {
      return {
        'roomType': roomType,
        'adults': 1,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Twin') {
      return {
        'roomType': roomType,
        'adults': 2,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Twin + child') {
      return {
        'roomType': roomType,
        'adults': 2,
        'children': 1,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Twin + 2 child') {
      return {
        'roomType': roomType,
        'adults': 2,
        'children': 2,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else {
      return {
        'roomType': roomType,
        'adults': 1,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    }
  }

  @override
  void initState() {
    super.initState();
    rooms.add(_getRoomConfig(roomOption[0]));
  }

  void _addRoom() {
    setState(() {
      rooms.add(_getRoomConfig(roomOption[0]));
    });
  }

  void _removeRoom(int index) {
    setState(() {
      rooms.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...rooms.asMap().entries.map((entry) {
          final index = entry.key;
          final room = entry.value;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: MainColors.textColor(context)!.withOpacity(0.15),
              ),
            ),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        StringsAssetsConstants.selectYourRoom,
                        style: TextStyles.mediumBodyTextStyle(context),
                      ),
                      if (index > 0)
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: MainColors.errorColor(context),
                          ),
                          onPressed: () => _removeRoom(index),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SelectField<String>(
                    options: roomOption
                        .map((roomOption) =>
                            Option(label: roomOption, value: roomOption))
                        .toList(),
                    initialOption: Option<String>(
                      label: room['roomType'],
                      value: room['roomType'],
                    ),
                    menuPosition: MenuPosition.below,
                    onTextChanged: (value) => debugPrint(value),
                    onOptionSelected: (option) {
                      setState(() {
                        final newConfig = _getRoomConfig(option.value);
                        room['roomType'] = newConfig['roomType'];
                        room['adults'] = newConfig['adults'];
                        room['children'] = newConfig['children'];
                        room['infants'] = newConfig['infants'];
                      });
                    },
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
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color:
                                  MainColors.textColor(context)!.withOpacity(1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AddQuantityComponent(
                            key: ValueKey(room['roomType']),
                            productQuantity: room['adults'],
                            changeSelectedProductQuantity: (value) {
                              setState(() {
                                room['adults'] = value;
                              });
                            },
                            minval: 1,
                            initval: room['adults'],
                            maxval: 5,
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
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color:
                                  MainColors.textColor(context)!.withOpacity(1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AddQuantityComponent(
                            key: ValueKey(room['roomType']),
                            productQuantity: room['children'],
                            changeSelectedProductQuantity: (value) {
                              setState(() {
                                room['children'] = value;
                              });
                            },
                            minval: 0,
                            initval: room['children'],
                            maxval: 4,
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
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color:
                                  MainColors.textColor(context)!.withOpacity(1),
                            ),
                          ),
                        ),
                        Expanded(
                          child: AddQuantityComponent(
                            key: ValueKey(room['roomType']),
                            productQuantity: room['infants'],
                            changeSelectedProductQuantity: (value) {
                              setState(() {
                                room['infants'] = value;
                              });
                            },
                            minval: 0,
                            initval: room['infants'],
                            maxval: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  TextInputComponent(
                    label: StringsAssetsConstants.ageOfChild1,
                    hint: StringsAssetsConstants.enterAgeHere,
                    isLabelOutside: true,
                    filled: true,
                    borderRadius: 15,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                    onChange: (value) {
                      setState(() {
                        room['childAge'] = value;
                      });
                    },
                  ),
                  SizedBox(height: 20.h),
                  TextInputComponent(
                    label: StringsAssetsConstants.note,
                    hint: StringsAssetsConstants.enterAdditionalNotes,
                    isLabelOutside: true,
                    filled: true,
                    borderRadius: 15,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                    onChange: (value) {
                      setState(() {
                        room['notes'] = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: PrimaryButtonComponent(
            onTap: _addRoom,
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
