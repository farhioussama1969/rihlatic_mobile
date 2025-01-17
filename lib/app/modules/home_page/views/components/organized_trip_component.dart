import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/data/models/organized_trip_model.dart';

class OrganizedTripComponent extends StatelessWidget {
  final String title;
  final List<OrganizedTripModel> itemsList;

  const OrganizedTripComponent(
      {super.key, required this.title, required this.itemsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyles.mediumLabelTextStyle(context)
                    .copyWith(color: MainColors.textColor(context)),
              ),
              Spacer(),
              Text(
                StringsAssetsConstants.seeMore,
                style: TextStyles.smallLabelTextStyle(context)
                    .copyWith(color: MainColors.primaryColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 320.h,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            scrollDirection: Axis.horizontal,
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: itemsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(right: 15),
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
                          imageLink: itemsList[index].featuredImage ?? '',
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
                                  if (itemsList[index].destinations != null &&
                                      itemsList[index]!
                                          .destinations!
                                          .isNotEmpty)
                                    Text(
                                      itemsList[index]
                                          .destinations!
                                          .map((e) => e.name ?? '')
                                          .toList()
                                          .join(', '),
                                      style:
                                          TextStyles.smallBodyTextStyle(context)
                                              .copyWith(
                                                  color: MainColors.textColor(
                                                      context)!,
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
                                    itemsList[index].name ?? '',
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
                                Text(
                                  StringsAssetsConstants.from,
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  itemsList[index]
                                          .departures!
                                          .map((e) => e.priceIni ?? '')
                                          .toList()
                                          .join(' ' +
                                              StringsAssetsConstants.to +
                                              ' ') +
                                      ' ' +
                                      StringsAssetsConstants.dzd,
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
