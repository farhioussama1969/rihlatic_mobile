import 'package:flutter/material.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:select_field/select_field.dart';

class SelectFieldComponent extends StatelessWidget {
  final List<String> dates;
  final ValueChanged<String>? onSelected;

  const SelectFieldComponent({
    super.key,
    required this.dates,
    this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final options =
        dates.map((date) => Option(label: date, value: date)).toList();

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
            initialOption: options.isNotEmpty
                ? options[0]
                : null, // Set initial selection if available
            menuPosition: MenuPosition.below,
            onOptionSelected: (option) {
              debugPrint(option.value);
              if (onSelected != null) {
                onSelected!(option.value); // Notify parent of selection
              }
            },
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
            ),
            menuDecoration: MenuDecoration(
              margin: const EdgeInsets.only(top: 8),
              height: 100,
              alignment: MenuAlignment.center,
              backgroundDecoration: BoxDecoration(
                color: MainColors.inputColor(context),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
