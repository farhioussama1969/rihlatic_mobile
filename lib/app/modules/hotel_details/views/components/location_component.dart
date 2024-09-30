import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/icons_assets_constants.dart';
import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class LocationComponent extends StatelessWidget {
  const LocationComponent({super.key});

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
                  'Location',
                  style: TextStyle(
                      color: MainColors.textColor(context)!, fontSize: 15.r),
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
                SvgPicture.asset(
                  IconsAssetsConstants.mapsIcon,
                  color: MainColors.blackColor.withOpacity(0.6),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Appart City Collection Paris Gare de Lyon',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(0.6),
                    fontSize: 14.r,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                SvgPicture.asset(
                  IconsAssetsConstants.metroIcon,
                  color: MainColors.blackColor.withOpacity(0.6),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  'Metro: Paris-Le Bourget Airport, 10 m',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(0.6),
                    fontSize: 14.r,
                  ),
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
      height: 104.5.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}
