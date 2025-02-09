import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/components/buttons/icon_button_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/components/inputs/otp_input_component.dart';
import 'package:rihlatic/app/core/constants/fonts_family_assets_constants.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class EmailConfirmationWindowComponent extends StatelessWidget {
  const EmailConfirmationWindowComponent(
      {super.key,
      required this.onContinue,
      required this.loading,
      required this.otpController,
      required this.resendCodeLoading,
      required this.onResendCode});

  final Function onContinue;
  final bool loading;
  final TextEditingController otpController;
  final bool resendCodeLoading;
  final Function onResendCode;

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
                    StringsAssetsConstants.emailConfirmation,
                    style: TextStyles.mediumLabelTextStyle(context),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 5.h),
                Center(
                  child: Text(
                    StringsAssetsConstants.emailConfirmationDescription,
                    style: TextStyles.largeBodyTextStyle(context),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(height: 25.h),
                OtpInputComponent(
                  length: 6,
                  controller: otpController,
                ),
                SizedBox(height: 25.h),
                if (resendCodeLoading)
                  const Center(
                    child: LoadingComponent(),
                  ),
                if (!resendCodeLoading)
                  Row(
                    children: [
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text:
                                '${StringsAssetsConstants.youDidntReceiveTheCode} ',
                            style: TextStyles.largeBodyTextStyle(context),
                            children: <TextSpan>[
                              TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    if (!loading) {
                                      onResendCode();
                                    }
                                  },
                                text: StringsAssetsConstants.resend,
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(
                                  color: MainColors.primaryColor,
                                  fontFamily: FontsFamilyAssetsConstants.bold,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
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
