import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';

import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class PopulairAmenitiesComponent extends StatelessWidget {
  const PopulairAmenitiesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  StringsAssetsConstants.populairAmenities,
                  style: TextStyles.smallLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!,
                  ),
                ),
                Spacer(),
                Text(
                  'See map >',
                  style:
                      TextStyle(color: MainColors.primaryColor, fontSize: 15.r),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.restaurantIcon,
                      color: MainColors.blackColor.withOpacity(0.6),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Restaurent',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
                Row(
                  children: [
                    SvgPicture.asset(
                      IconsAssetsConstants.coffeeIcon,
                      color: MainColors.blackColor.withOpacity(0.6),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      'Coffee',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 8.w),
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
                      'Free Wifi',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: MainColors.textColor(context)!.withOpacity(0.15))),
      height: 76.5.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}
