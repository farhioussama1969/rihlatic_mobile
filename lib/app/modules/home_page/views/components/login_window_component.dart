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

class LoginWindowComponent extends StatelessWidget {
  const LoginWindowComponent(
      {super.key,
      required this.loading,
      required this.passwordController,
      required this.passwordFocusNode,
      required this.formKey,
      required this.onContinue,
      required this.isPasswordVisible,
      required this.onPasswordVisibility});

  final bool loading;
  final TextEditingController passwordController;
  final FocusNode passwordFocusNode;
  final GlobalKey<FormState> formKey;
  final Function onContinue;
  final bool isPasswordVisible;
  final Function onPasswordVisibility;

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
                    StringsAssetsConstants.signIn,
                    style: TextStyles.mediumLabelTextStyle(context),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    StringsAssetsConstants.signInDescription,
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
                        focusNode: passwordFocusNode,
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
