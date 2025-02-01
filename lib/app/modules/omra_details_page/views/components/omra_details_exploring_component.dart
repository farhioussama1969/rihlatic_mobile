import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class OmraDetailsExploringComponent extends StatelessWidget {
  const OmraDetailsExploringComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color: MainColors.textColor(context)!.withOpacity(0.15))),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Inclus ',
                        style:
                            TextStyles.mediumLabelTextStyle(context).copyWith(
                          color: MainColors.textColor(context)!,
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            IconsAssetsConstants.metroIcon,
                            color:
                                MainColors.textColor(context)!.withOpacity(0.6),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Metro: ',
                            style: TextStyles.smallLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Non Inclus ',
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.textColor(context)!,
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
                            style: TextStyles.smallLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
