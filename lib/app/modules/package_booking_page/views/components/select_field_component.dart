import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:select_field/select_field.dart';

const fruitOptions = <String>[
  'Apple',
  'Banana',
];

class SelectFieldComponent extends StatelessWidget {
  const SelectFieldComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final options = fruitOptions
        .map((fruit) => Option(label: fruit, value: fruit))
        .toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SelectField<String>(
        options: options,
        initialOption: Option<String>(
          label: fruitOptions[0],
          value: fruitOptions[0],
        ),
        menuPosition: MenuPosition.below,
        onTextChanged: (value) => debugPrint(value),
        onOptionSelected: (option) => debugPrint(option.toString()),
        inputStyle: const TextStyle(),
        inputDecoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          filled: true,
          fillColor: MainColors.inputColor(context),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none, // No border
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
            borderSide: BorderSide.none, // No border
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12), // Rounded corners
            borderSide: BorderSide.none, // No border
          ),
        ),
        menuDecoration: MenuDecoration(
          margin: const EdgeInsets.only(top: 8),
          height: 365,
          alignment: MenuAlignment.center,
          backgroundDecoration: BoxDecoration(
            color: MainColors.transparentColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                offset: const Offset(1, 1),
                color: MainColors.transparentColor,
                blurRadius: 3,
              ),
            ],
          ),
          animationDuration: const Duration(milliseconds: 400),
          buttonStyle: TextButton.styleFrom(
            fixedSize: const Size(double.infinity, 60),
            backgroundColor:
                MainColors.transparentColor, // Gray background for menu items
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(16),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(12), // Rounded corners for menu items
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: MainColors.primaryColor,
            ),
          ),
          separatorBuilder: (context, index) => Container(
            height: 0,
            width: double.infinity,
            color: MainColors.blackColor,
          ),
        ),
      ),
    );
  }
}
