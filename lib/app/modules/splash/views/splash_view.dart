import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/logos_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/config_controller.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(gradient: MainColors.primaryGradientColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            SizedBox(
                width: 1.sw,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      LogosAssetsConstants.appVectorLogo,
                      width: 300.r,
                    ),
                  ],
                ).animate().blurXY(
                    begin: 10,
                    end: 0,
                    duration: const Duration(milliseconds: 1500))),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const LoadingComponent(
                  color: MainColors.whiteColor,
                ),
                SizedBox(height: 15.h),
                GetBuilder<ConfigController>(
                    id: GetBuildersIdsConstants.splashVersionText,
                    builder: (logic) => logic.appVersion != null
                        ? Text(
                            '${StringsAssetsConstants.appName} (v${logic.appVersion})',
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.whiteColor,
                            ),
                          )
                        : const SizedBox.shrink()),
                SizedBox(height: 30.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
