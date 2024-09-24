import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/constants/logos_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/get_started/views/components/get_started_background_component.dart';

import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GetStartedBackgroundComponent(),
          PositionedDirectional(
            bottom: 0,
            child: Container(
              width: 1.sw,
              height: 0.6.sh,
              decoration: BoxDecoration(
                color: MainColors.backgroundColor(context),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            StringsAssetsConstants.getStartedTitle,
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              fontSize: 22.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: Text(
                            StringsAssetsConstants.getStartedDescription,
                            style: TextStyles.mediumBodyTextStyle(context)
                                .copyWith(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.7),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PrimaryButtonComponent(
                    width: 360.w,
                    onTap: () {},
                    disableShadow: true,
                    text: StringsAssetsConstants.start,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
