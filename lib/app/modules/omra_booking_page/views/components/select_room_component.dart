import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:radio_group_v2/utils/radio_group_decoration.dart';
import 'package:radio_group_v2/widgets/view_models/radio_group_controller.dart';
import 'package:radio_group_v2/widgets/views/radio_group.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/add_quantity_component.dart';
import 'package:select_field/select_field.dart';

final bedOption = [
  'With bed',
  'With room',
];

final roomOptionWithBed = [
  'Quadruple',
  'Quintiple',
];

final roomOptionWithRoom = [
  'Single',
  'Double',
  'Triple',
  'Quadruple',
  'Quintiple',
];

class SelectRoomComponent extends StatefulWidget {
  final Function(List<Map<String, dynamic>>) onRoomsUpdated;

  const SelectRoomComponent({super.key, required this.onRoomsUpdated});

  @override
  State<SelectRoomComponent> createState() => _SelectRoomComponentState();
}

class _SelectRoomComponentState extends State<SelectRoomComponent> {
  final List<Map<String, dynamic>> rooms = [];
  final RadioGroupController _radioController = RadioGroupController();
  String _selectedBedOption = bedOption[0];
  List<String> _currentRoomOptions = roomOptionWithBed;

  final Map<String, int> roomTypeMaxOccupancy = {
    'Single': 1,
    'Double': 2,
    'Triple': 3,
    'Quadruple': 4,
    'Quintiple': 5,
  };

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
    } else if (roomType == 'Double') {
      return {
        'roomType': roomType,
        'adults': 2,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Triple') {
      return {
        'roomType': roomType,
        'adults': 3,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Quadruple') {
      return {
        'roomType': roomType,
        'adults': 4,
        'children': 0,
        'infants': 0,
        'childAge': '',
        'notes': '',
      };
    } else if (roomType == 'Quintiple') {
      return {
        'roomType': roomType,
        'adults': 5,
        'children': 0,
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
    rooms.add(_getRoomConfig(_currentRoomOptions[0]));
    widget.onRoomsUpdated(rooms);
  }

  void _updateRoomOptions(String selectedBedOption) {
    setState(() {
      _selectedBedOption = selectedBedOption;
      _currentRoomOptions = selectedBedOption == 'With bed'
          ? roomOptionWithBed
          : roomOptionWithRoom;

      for (var room in rooms) {
        room['roomType'] = _currentRoomOptions[0];
        final newConfig = _getRoomConfig(_currentRoomOptions[0]);
        room['adults'] = newConfig['adults'];
        room['children'] = newConfig['children'];
        room['infants'] = newConfig['infants'];
      }
      widget.onRoomsUpdated(rooms);
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
                    ],
                  ),
                  RadioGroup(
                    controller: _radioController,
                    values: bedOption,
                    orientation: RadioGroupOrientation.horizontal,
                    decoration: RadioGroupDecoration(
                        activeColor: MainColors.primaryColor),
                    onChanged: (selectedValue) {
                      _updateRoomOptions(selectedValue);
                    },
                  ),
                  const SizedBox(height: 8),
                  SelectField<String>(
                    options: _currentRoomOptions
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
                        widget.onRoomsUpdated(rooms);
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
                                widget.onRoomsUpdated(rooms);
                              });
                            },
                            minval: 1,
                            initval: room['adults'],
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
                                widget.onRoomsUpdated(rooms);
                              });
                            },
                            minval: 0,
                            initval: room['children'],
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
                                widget.onRoomsUpdated(rooms);
                              });
                            },
                            minval: 0,
                            initval: room['infants'],
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
                        widget.onRoomsUpdated(rooms);
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
                        widget.onRoomsUpdated(rooms);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ],
    );
  }
}
