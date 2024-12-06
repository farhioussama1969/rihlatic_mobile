import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelSimularComponent extends StatelessWidget {
  const HotelSimularComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              // width: 130.w,
              height: 130.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(21.5.r),
                child: NetworkImageComponent(
                    imageLink:
                        "https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg"),
              ),
            ),
          ),
          SizedBox(
            width: 4.w,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 225.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 200.w,
                        child: Text(
                          'Best Western Plus',
                          style:
                              TextStyles.smallLabelTextStyle(context).copyWith(
                            color: MainColors.textColor(context)!,
                            height: 1,
                          ),
                          maxLines: 2,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        IconsAssetsConstants.metroIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          '4.5',
                          style:
                              TextStyles.smallBodyTextStyle(context).copyWith(
                            color: MainColors.whiteColor,
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: MainColors.secondColor,
                            borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(8.r),
                                bottomStart: Radius.circular(8.r))),
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        'Fabulous',
                        style: TextStyles.smallBodyTextStyle(context).copyWith(
                          color: MainColors.secondColor,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      Text(
                        '320 reviews',
                        style: TextStyles.smallBodyTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconsAssetsConstants.mapsIcon,
                        color: MainColors.blackColor.withOpacity(0.6),
                        width: 14.w,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Near King Power Mahanakhon',
                        style: TextStyles.smallBodyTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 3.h,
                  ),
                  // pricing
                  SizedBox(
                    width: 225.w,
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
                                    .withOpacity(1),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Total (incl. taxes):',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(width: 5.w),
                                Text(
                                  'US\$147',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: MainColors.whiteColor,
        borderRadius: BorderRadius.circular(21.5),
        border:
            Border.all(color: MainColors.textColor(context)!.withOpacity(0.0)),
        boxShadow: [
          BoxShadow(
            color: MainColors.textColor(context)!.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(2, 4),
          ),
        ],
      ),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}
