import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class PackageDetailsReviewsComponent extends StatelessWidget {
  const PackageDetailsReviewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringsAssetsConstants.reviews,
                  style: TextStyles.mediumLabelTextStyle(context),
                  maxLines: 2,
                ),
                Row(
                  children: [
                    Text(
                      '4.5',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.secondColor,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '/5',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.blackColor.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Very Good',
                          style:
                              TextStyles.smallLabelTextStyle(context).copyWith(
                            color: MainColors.secondColor,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          '1,005 verified reviews',
                          style:
                              TextStyles.smallLabelTextStyle(context).copyWith(
                            color: MainColors.blackColor.withOpacity(0.6),
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 188.5.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Location',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                  const Spacer(),
                                  Text('4.5',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                padding: const EdgeInsets.all(0),
                                width: 180,
                                alignment: MainAxisAlignment.start,
                                barRadius: const Radius.circular(30),
                                lineHeight: 4.0,
                                percent: 0.5,
                                backgroundColor:
                                    MainColors.blackColor.withOpacity(0.2),
                                progressColor: MainColors.secondColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 188.5.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Location',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                  const Spacer(),
                                  Text('4.5',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                padding: const EdgeInsets.all(0),
                                alignment: MainAxisAlignment.start,
                                barRadius: const Radius.circular(30),
                                lineHeight: 4.0,
                                percent: 0.5,
                                backgroundColor:
                                    MainColors.blackColor.withOpacity(0.2),
                                progressColor: MainColors.secondColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 188.5.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Location',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                  const Spacer(),
                                  Text('4.5',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                padding: const EdgeInsets.all(0),
                                width: 180,
                                alignment: MainAxisAlignment.start,
                                barRadius: const Radius.circular(30),
                                lineHeight: 4.0,
                                percent: 0.5,
                                backgroundColor:
                                    MainColors.blackColor.withOpacity(0.2),
                                progressColor: MainColors.secondColor,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SizedBox(
                          width: 188.5.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Location',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                  const Spacer(),
                                  Text('4.5',
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                        color: MainColors.blackColor
                                            .withOpacity(0.6),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                padding: const EdgeInsets.all(0),
                                width: 180,
                                alignment: MainAxisAlignment.start,
                                barRadius: const Radius.circular(30),
                                lineHeight: 4.0,
                                percent: 0.5,
                                backgroundColor:
                                    MainColors.blackColor.withOpacity(0.2),
                                progressColor: MainColors.secondColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
