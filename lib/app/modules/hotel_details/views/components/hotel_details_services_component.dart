import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelDetailsServicesComponent extends StatelessWidget {
  const HotelDetailsServicesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services & Amenities',
            style: TextStyles.mediumLabelTextStyle(context).copyWith(
              color: MainColors.textColor(context)!,
            ),
            maxLines: 2,
            textAlign: TextAlign.left,
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
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Tv',
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
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Breakfast',
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
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Heating',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Tv',
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
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Breakfast',
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
                        IconsAssetsConstants.selectedIcon,
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        'Heating',
                        style: TextStyles.smallLabelTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const SizedBox()
            ],
          ),
        ],
      ),
    );
  }
}
