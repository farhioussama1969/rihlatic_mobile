import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class OmraCardComponent extends StatelessWidget {
  const OmraCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320.h,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 1.5,
            ),
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: 1, // Static item count
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: MainColors.backgroundColor(context),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: MainColors.textColor(context)!.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 120.h,
                        child: Container(
                          color: MainColors.primaryColor.withOpacity(0.1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconsAssetsConstants.locationIcon,
                                  color: MainColors.textColor(context)!
                                      .withOpacity(0.5),
                                  width: 18.r,
                                  height: 18.r,
                                ),
                                Text(
                                  'Destination Name',
                                  style:
                                      TextStyles.mediumLabelTextStyle(context)
                                          .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                    height: 1,
                                  ),
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: MainColors.primaryColor,
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(19.r)),
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                    right: 4.0,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '0 depart',
                                        style: TextStyles.mediumBodyTextStyle(
                                                context)
                                            .copyWith(
                                          color: MainColors.whiteColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          border: Border.all(
                                              color: MainColors.whiteColor),
                                        ),
                                        width: 13.r,
                                        height: 13.r,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: SvgPicture.asset(
                                            IconsAssetsConstants.infoIcon,
                                            color: MainColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Container(
                                  decoration: BoxDecoration(
                                    color: MainColors.primaryColor
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(19.r)),
                                    border: Border.all(
                                        color: MainColors.primaryColor),
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                    right: 4.0,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '0 days',
                                        style: TextStyles.mediumBodyTextStyle(
                                                context)
                                            .copyWith(
                                          color: MainColors.primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          border: Border.all(
                                              color: MainColors.primaryColor),
                                        ),
                                        width: 13.r,
                                        height: 13.r,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: SvgPicture.asset(
                                            IconsAssetsConstants.infoIcon,
                                            color: MainColors.primaryColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 4.w),
                                Container(
                                  decoration: BoxDecoration(
                                    color: MainColors.blackColor.withOpacity(0),
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(19.r)),
                                    border: Border.all(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6)),
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                    right: 4.0,
                                    top: 2,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '0',
                                        style: TextStyles.mediumBodyTextStyle(
                                                context)
                                            .copyWith(
                                          color: MainColors.textColor(context)!
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1000),
                                          border: Border.all(
                                              color: MainColors.blackColor
                                                  .withOpacity(0.6)),
                                        ),
                                        width: 13.r,
                                        height: 13.r,
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: SvgPicture.asset(
                                            IconsAssetsConstants.infoIcon,
                                            color: MainColors.blackColor
                                                .withOpacity(0.6),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Package Name',
                                  style:
                                      TextStyles.mediumLabelTextStyle(context)
                                          .copyWith(
                                    color: MainColors.textColor(context)!,
                                    height: 1,
                                  ),
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  StringsAssetsConstants.from,
                                  style: TextStyles.mediumBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  '0 ${StringsAssetsConstants.dzd}',
                                  style: TextStyles.smallLabelTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
