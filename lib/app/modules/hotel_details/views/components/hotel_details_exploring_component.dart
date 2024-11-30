import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/components/cards/tag_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelDetailsExploringComponent extends StatelessWidget {
  const HotelDetailsExploringComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Exploring the area',
            style: TextStyles.mediumLabelTextStyle(context),
            maxLines: 2,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconsAssetsConstants.metroIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Metro: Reaumur - Sebastopol Station, ',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
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
                        IconsAssetsConstants.metroIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Metro: Reaumur - Sebastopol Station, ',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
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
                        IconsAssetsConstants.metroIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Metro: Reaumur - Sebastopol Station, ',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '53.3 km',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '53.3 km',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '53.3 km',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          TagComponent(
            width: 392.w,
            height: 39.5.h,
            title: StringsAssetsConstants.seeOnMaps,
            textColor: MainColors.primaryColor,
            disableShadow: true,
            border: Border.all(
                color: MainColors.textColor(context)!.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(8.0),
            backgroundColor: MainColors.textColor(context)!.withOpacity(0.0),
          ),
        ],
      ),
    );
  }
}
