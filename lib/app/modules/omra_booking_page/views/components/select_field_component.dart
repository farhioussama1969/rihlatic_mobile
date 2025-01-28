import 'package:flutter/material.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:select_field/select_field.dart';

class SelectFieldComponent extends StatelessWidget {
  final List<String> dates;
  const SelectFieldComponent({super.key, required this.dates});

  @override
  Widget build(BuildContext context) {
    final options =
        dates.map((dates) => Option(label: dates, value: dates)).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringsAssetsConstants.selectYourTripDate,
            style: TextStyles.mediumBodyTextStyle(context),
          ),
          const SizedBox(height: 8),
          SelectField<String>(
            options: options,
            initialOption: Option<String>(
              label: dates[0],
              value: dates[0],
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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
              height: 100,
              alignment: MenuAlignment.center,
              backgroundDecoration: BoxDecoration(
                color: MainColors.inputColor(context),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 1),
                    color: MainColors.textColor(context)!.withOpacity(0.3),
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
        ],
      ),
    );
  }
}
