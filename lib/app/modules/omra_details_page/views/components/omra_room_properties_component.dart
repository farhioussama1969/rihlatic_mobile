import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/components/cards/tag_component.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class OmraRoomPropertiesComponent extends StatelessWidget {
  const OmraRoomPropertiesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const PricingContainer();
  }
}

class PricingContainer extends StatefulWidget {
  const PricingContainer({super.key});

  @override
  _PricingContainerState createState() => _PricingContainerState();
}

class _PricingContainerState extends State<PricingContainer> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: isOpen ? buildTwoContainers() : buildSingleContainer(),
    );
  }

  Widget buildSingleContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: MainColors.textColor(context)!.withOpacity(0.15))),
      height: 190.5.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(7.r),
                child: SizedBox(
                  width: 119.5.w,
                  height: 157.5.h,
                  child: const NetworkImageComponent(
                    imageLink:
                        'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title
                      SizedBox(
                        width: 239.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Single ocean view king bed',
                                style: TextStyles.smallLabelTextStyle(context)
                                    .copyWith(
                                  color: MainColors.textColor(context)!,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SvgPicture.asset(
                              width: 12,
                              IconsAssetsConstants.readmoreIcon,
                              color: MainColors.primaryColor.withOpacity(1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // properties
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                IconsAssetsConstants.bedIcon,
                                color: MainColors.blackColor.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                '1 Queen bed',
                                style: TextStyles.smallBodyTextStyle(context)
                                    .copyWith(
                                  color: MainColors.textColor(context)!
                                      .withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                IconsAssetsConstants.surfaceIcon,
                                color: MainColors.blackColor.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                '45m² | Floor: 14-29',
                                style: TextStyles.smallBodyTextStyle(context)
                                    .copyWith(
                                  color: MainColors.textColor(context)!
                                      .withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                IconsAssetsConstants.wifiIcon,
                                color: MainColors.blackColor.withOpacity(0.6),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                'Free WiFi',
                                style: TextStyles.smallBodyTextStyle(context)
                                    .copyWith(
                                  color: MainColors.textColor(context)!
                                      .withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // pricing
                      SizedBox(
                        width: 239.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '',
                                style: TextStyles.mediumLabelTextStyle(context)
                                    .copyWith(
                                  color: MainColors.textColor(context)!,
                                  fontSize: 15.r,
                                ),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'US\$141',
                                  style: TextStyles.smallLabelTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.35),
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Per night',
                                      style: TextStyles.smallLabelTextStyle(
                                              context)
                                          .copyWith(
                                        color: MainColors.textColor(context)!
                                            .withOpacity(0.6),
                                      ),
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      'US\$141',
                                      style: TextStyles.smallLabelTextStyle(
                                              context)
                                          .copyWith(
                                        color: MainColors.textColor(context)!
                                            .withOpacity(1),
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
                  )),
            ],
          )),
    );
  }

  Widget buildTwoContainers() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: MainColors.primaryColor)),
      height: 652.5.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(7.r),
                  child: SizedBox(
                    width: 119.5.w,
                    height: 157.5.h,
                    child: const NetworkImageComponent(
                      imageLink:
                          'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // title
                        SizedBox(
                          width: 239.w,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Single ocean view king bed',
                                  style: TextStyles.smallLabelTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!,
                                  ),
                                  maxLines: 2,
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SvgPicture.asset(
                                width: 12,
                                IconsAssetsConstants.readlessIcon,
                                color: MainColors.primaryColor.withOpacity(1),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        // properties
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconsAssetsConstants.bedIcon,
                                  color: MainColors.blackColor.withOpacity(0.6),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  '1 Queen bed',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconsAssetsConstants.surfaceIcon,
                                  color: MainColors.blackColor.withOpacity(0.6),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  '45m² | Floor: 14-29',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  IconsAssetsConstants.wifiIcon,
                                  color: MainColors.blackColor.withOpacity(0.6),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  'Free WiFi',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        // pricing
                        SizedBox(
                          width: 239.w,
                          child: Row(
                            children: [
                              const Expanded(
                                child: SizedBox(),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'US\$141',
                                    style:
                                        TextStyles.smallLabelTextStyle(context)
                                            .copyWith(
                                      color: MainColors.textColor(context)!
                                          .withOpacity(0.35),
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Per night',
                                        style: TextStyles.smallLabelTextStyle(
                                                context)
                                            .copyWith(
                                          color: MainColors.textColor(context)!
                                              .withOpacity(0.6),
                                        ),
                                      ),
                                      SizedBox(width: 5.w),
                                      Text(
                                        'US\$141',
                                        style: TextStyles.smallLabelTextStyle(
                                                context)
                                            .copyWith(
                                          color: MainColors.textColor(context)!
                                              .withOpacity(1),
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
                    )),
              ],
            ),
          ),
          Divider(
            color: MainColors.blackColor.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1 queen bed',
                  style: TextStyles.smallLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(1),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 1',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 2',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 3',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(''),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'incl. taxes',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.35),
                        fontSize: 14.r,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconsAssetsConstants.informationIcon,
                          color: MainColors.blackColor.withOpacity(0.6),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '50100 DZD',
                          style:
                              TextStyles.smallLabelTextStyle(context).copyWith(
                            color:
                                MainColors.textColor(context)!.withOpacity(1),
                            fontSize: 14.r,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 8.w,
                ),
                TagComponent(
                  title: StringsAssetsConstants.selectYourRoom,
                  textColor: MainColors.textColor(context)!.withOpacity(0.5),
                  disableShadow: true,
                  border: Border.all(
                      color: MainColors.textColor(context)!.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      MainColors.textColor(context)!.withOpacity(0.0),
                ),
              ],
            ),
          ),
          Divider(
            color: MainColors.blackColor.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1 queen bed',
                  style: TextStyles.smallLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(1),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 1',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                        fontSize: 14.r,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 2',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                        fontSize: 14.r,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.selectedIcon,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Service 3',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                        fontSize: 14.r,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(''),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'incl. taxes',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.35),
                        fontSize: 14.r,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          IconsAssetsConstants.informationIcon,
                          color: MainColors.blackColor.withOpacity(0.6),
                        ),
                        SizedBox(width: 5.w),
                        Text(
                          '50100 DZD',
                          style:
                              TextStyles.smallLabelTextStyle(context).copyWith(
                            color:
                                MainColors.textColor(context)!.withOpacity(1),
                            fontSize: 14.r,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 8.w,
                ),
                TagComponent(
                  title: StringsAssetsConstants.selectYourRoom,
                  textColor: MainColors.textColor(context)!.withOpacity(0.5),
                  disableShadow: true,
                  border: Border.all(
                      color: MainColors.textColor(context)!.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(8.0),
                  backgroundColor:
                      MainColors.textColor(context)!.withOpacity(0.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
