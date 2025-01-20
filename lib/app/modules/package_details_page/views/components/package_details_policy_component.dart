import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/cards/tag_component.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class PackageDetailsPolicyComponent extends StatelessWidget {
  const PackageDetailsPolicyComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringsAssetsConstants.checkInPolicy,
                  style: TextStyles.mediumLabelTextStyle(context),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Very convenient location just across the road from Paris Nord station...',
                  style: TextStyles.mediumBodyTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(0.6),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TagComponent(
                  width: 392.w,
                  height: 39.5.h,
                  title: StringsAssetsConstants.readAllPolicies,
                  textColor: MainColors.primaryColor,
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
