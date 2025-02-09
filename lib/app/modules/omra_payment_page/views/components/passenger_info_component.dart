import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:rihlatic/app/core/components/inputs/date_input_component.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class PassengerInfoComponent extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passportNumberController;
  final TextEditingController passportExpiryController;
  final TextEditingController birthDateController;

  const PassengerInfoComponent({
    super.key,
    required this.firstNameController,
    required this.lastNameController,
    required this.emailController,
    required this.phoneController,
    required this.passportNumberController,
    required this.passportExpiryController,
    required this.birthDateController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                Text(
                  StringsAssetsConstants.passengerInformation,
                  style: TextStyles.mediumBodyTextStyle(context),
                ),
                SizedBox(height: 20.h),
                TextInputComponent(
                  controller: firstNameController,
                  label: StringsAssetsConstants.firstName,
                  hint: StringsAssetsConstants.enterFirstName,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(height: 20.h),
                TextInputComponent(
                  controller: lastNameController,
                  label: StringsAssetsConstants.lastName,
                  hint: StringsAssetsConstants.enterLastName,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(height: 20.h),
                TextInputComponent(
                  controller: emailController,
                  label: StringsAssetsConstants.email,
                  hint: StringsAssetsConstants.enterEmail,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(height: 20.h),
                TextInputComponent(
                  controller: phoneController,
                  label: StringsAssetsConstants.phone,
                  hint: StringsAssetsConstants.enterPhone,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(height: 20.h),
                TextInputComponent(
                  controller: passportNumberController,
                  label: StringsAssetsConstants.passportNumber,
                  hint: StringsAssetsConstants.enterPassportNumber,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
                ),
                SizedBox(height: 20.h),
                DateInputComponent(
                  textController: passportExpiryController,
                  label: StringsAssetsConstants.passportExpiry,
                  hint: StringsAssetsConstants.enterPassportExpiry,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  callBack: (selectedDate) {
                    passportExpiryController.text =
                        DateFormat('yyyy-MM-dd').format(selectedDate);
                  },
                ),
                SizedBox(height: 20.h),
                DateInputComponent(
                  textController: birthDateController,
                  label: StringsAssetsConstants.birthDate,
                  hint: StringsAssetsConstants.enterBirthDate,
                  isLabelOutside: true,
                  filled: true,
                  borderRadius: 15,
                  callBack: (selectedDate) {
                    passportExpiryController.text =
                        DateFormat('yyyy-MM-dd').format(selectedDate);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
