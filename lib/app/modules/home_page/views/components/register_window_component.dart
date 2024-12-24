import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/buttons/icon_button_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/inputs/text_input_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/core/utils/validator_util.dart';

class RegisterWindowComponent extends StatelessWidget {
  const RegisterWindowComponent(
      {super.key,
      required this.loading,
      required this.emailController,
      required this.passwordController,
      required this.passwordConfirmationController,
      required this.formKey,
      required this.onContinue,
      required this.passwordFocusNode,
      required this.passwordConfirmationFocusNode,
      required this.emailFocusNode,
      required this.isPasswordVisible,
      required this.onPasswordVisibility,
      required this.isPasswordConfirmationVisible,
      required this.onPasswordConfirmationVisibility});

  final bool loading;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmationController;
  final FocusNode passwordFocusNode;
  final FocusNode passwordConfirmationFocusNode;
  final FocusNode emailFocusNode;
  final GlobalKey<FormState> formKey;
  final Function onContinue;
  final bool isPasswordVisible;
  final Function onPasswordVisibility;
  final bool isPasswordConfirmationVisible;
  final Function onPasswordConfirmationVisibility;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: MainColors.backgroundColor(context),
            borderRadius: BorderRadiusDirectional.vertical(
              top: Radius.circular(30.r),
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15.h),
                Center(
                  child: Text(
                    StringsAssetsConstants.createNewAccount,
                    style: TextStyles.mediumLabelTextStyle(context),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    StringsAssetsConstants.createNewAccountDescription,
                    style: TextStyles.largeBodyTextStyle(context),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 25.h),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextInputComponent(
                        focusNode: emailFocusNode,
                        nextNode: passwordFocusNode,
                        controller: emailController,
                        label: StringsAssetsConstants.email,
                        isLabelOutside: true,
                        hint:
                            '${StringsAssetsConstants.enter} ${StringsAssetsConstants.email}...',
                        textInputType: TextInputType.emailAddress,
                        validate: (value) => ValidatorUtil.emailValidation(
                            value,
                            customMessage:
                                '${StringsAssetsConstants.check} ${StringsAssetsConstants.email}...'),
                      ),
                      SizedBox(height: 15.h),
                      TextInputComponent(
                        focusNode: passwordFocusNode,
                        nextNode: passwordConfirmationFocusNode,
                        controller: passwordController,
                        label: StringsAssetsConstants.password,
                        isLabelOutside: true,
                        hint:
                            '${StringsAssetsConstants.enter} ${StringsAssetsConstants.password}...',
                        textInputType: TextInputType.text,
                        validate: (value) => ValidatorUtil.passwordValidation(
                            value,
                            customMessage:
                                StringsAssetsConstants.passwordValidation),
                        obscureText: !isPasswordVisible,
                        suffix: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 10.w,
                            end: 20.w,
                          ),
                          child: GestureDetector(
                            onTap: () => onPasswordVisibility(),
                            child: SvgPicture.asset(
                              isPasswordVisible
                                  ? IconsAssetsConstants.hideIcon
                                  : IconsAssetsConstants.showIcon,
                              width: 24.r,
                              height: 24.r,
                              color: MainColors.disableColor(context),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      TextInputComponent(
                        focusNode: passwordConfirmationFocusNode,
                        controller: passwordConfirmationController,
                        label: StringsAssetsConstants.passwordConfirmation,
                        isLabelOutside: true,
                        hint:
                            '${StringsAssetsConstants.enter} ${StringsAssetsConstants.passwordConfirmation}...',
                        textInputType: TextInputType.text,
                        validate: (value) => value.isNotEmpty
                            ? ValidatorUtil.passwordConfirmationValidation(
                                value, passwordController.text,
                                customMessage: StringsAssetsConstants
                                    .passwordConfirmationValidation)
                            : '${StringsAssetsConstants.check} ${StringsAssetsConstants.passwordConfirmation}...',
                        obscureText: !isPasswordConfirmationVisible,
                        suffix: Padding(
                          padding: EdgeInsetsDirectional.only(
                            start: 10.w,
                            end: 20.w,
                          ),
                          child: GestureDetector(
                            onTap: () => onPasswordConfirmationVisibility(),
                            child: SvgPicture.asset(
                              isPasswordConfirmationVisible
                                  ? IconsAssetsConstants.hideIcon
                                  : IconsAssetsConstants.showIcon,
                              width: 24.r,
                              height: 24.r,
                              color: MainColors.disableColor(context),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25.h),
                PrimaryButtonComponent(
                  onTap: () => onContinue(),
                  isLoading: loading,
                  text: StringsAssetsConstants.confirm,
                  disableShadow: true,
                ),
                SizedBox(height: 40.h),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButtonComponent(
                onTap: () => Get.back(),
                iconLink: IconsAssetsConstants.closeIcon,
                buttonWidth: 23.r,
                buttonHeight: 23.r,
                iconWidth: 15.r,
                iconHeight: 15.r,
                backgroundColor:
                    MainColors.disableColor(context)?.withOpacity(0.5),
                iconColor: MainColors.whiteColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
