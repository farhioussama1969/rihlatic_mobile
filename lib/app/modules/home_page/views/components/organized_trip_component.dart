import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class OrganizedTripComponent extends StatelessWidget {
  final String title;

  const OrganizedTripComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyles.mediumLabelTextStyle(context)
                  .copyWith(color: MainColors.textColor(context)),
            ),
            Spacer(),
            Text(
              'See More',
              style: TextStyles.smallLabelTextStyle(context)
                  .copyWith(color: MainColors.primaryColor),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 320.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      child: SizedBox(
                        width: 242.w,
                        height: 190.h,
                        child: NetworkImageComponent(
                          imageLink:
                              'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Expanded(
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    IconsAssetsConstants.locationIcon,
                                    color:
                                        MainColors.blackColor.withOpacity(0.5),
                                    width: 13.r,
                                    height: 13.r,
                                  ),
                                  Text(
                                    'Baku, Azerbaijan',
                                    style: TextStyles.smallBodyTextStyle(
                                            context)
                                        .copyWith(
                                            color:
                                                MainColors.textColor(context)!,
                                            height: 1),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '1 depart',
                                          style: TextStyles.smallBodyTextStyle(
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
                                                  color:
                                                      MainColors.whiteColor)),
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
                                    decoration: BoxDecoration(
                                        color: MainColors.primaryColor,
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                                Radius.circular(19.r))),
                                    padding: EdgeInsets.only(
                                        left: 4.0,
                                        right: 4.0,
                                        top: 2,
                                        bottom: 2),
                                  ),
                                  SizedBox(width: 4.w),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '1 depart',
                                          style: TextStyles.smallBodyTextStyle(
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
                                                  color:
                                                      MainColors.primaryColor)),
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
                                    decoration: BoxDecoration(
                                        color: MainColors.primaryColor
                                            .withOpacity(0.1),
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                                Radius.circular(19.r)),
                                        border: Border.all(
                                            color: MainColors.primaryColor)),
                                    padding: EdgeInsets.only(
                                        left: 4.0,
                                        right: 4.0,
                                        top: 2,
                                        bottom: 2),
                                  ),
                                  SizedBox(width: 4.w),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          '1 depart',
                                          style: TextStyles.smallBodyTextStyle(
                                                  context)
                                              .copyWith(
                                            color: MainColors.blackColor
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
                                                      .withOpacity(0.6))),
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
                                    decoration: BoxDecoration(
                                        color: MainColors.blackColor
                                            .withOpacity(0),
                                        borderRadius:
                                            BorderRadiusDirectional.all(
                                                Radius.circular(19.r)),
                                        border: Border.all(
                                            color: MainColors.blackColor
                                                .withOpacity(0.6))),
                                    padding: EdgeInsets.only(
                                        left: 4.0,
                                        right: 4.0,
                                        top: 2,
                                        bottom: 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    'Voyage Sharm el sheikh Août',
                                    style: TextStyles.smallLabelTextStyle(
                                            context)
                                        .copyWith(
                                            color:
                                                MainColors.textColor(context)!,
                                            height: 1),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    IconsAssetsConstants.starIcon,
                                    color: MainColors.primaryColor,
                                    width: 13.r,
                                    height: 13.r,
                                  ),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  '5 Hotel Amarina Sun Resort',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  '169000 DZD',
                                  style: TextStyles.smallLabelTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: MainColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: MainColors.textColor(context)!.withOpacity(0.2),
                      blurRadius: 5,
                      offset: Offset(2, 4), // Shadow position
                    ),
                  ],
                ),
                width: 242.w,
              );
            },
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
      ],
    );
  }
}
