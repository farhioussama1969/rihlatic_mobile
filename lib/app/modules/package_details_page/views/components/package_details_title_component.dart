import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';

import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class PackageDetailsTitleComponent extends StatelessWidget {
  final String title;
  final String price;
  const PackageDetailsTitleComponent(
      {super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    StringsAssetsConstants.starting,
                    style: TextStyles.mediumLabelTextStyle(context).copyWith(
                      color: MainColors.textColor(context)!.withOpacity(0.6),
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    '$price ${StringsAssetsConstants.dzd}',
                    style: TextStyles.mediumLabelTextStyle(context).copyWith(
                      color: MainColors.primaryColor,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MainColors.secondColor,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(8.r),
                        bottomStart: Radius.circular(8.r))),
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  '4.5',
                  style: TextStyles.smallLabelTextStyle(context)
                      .copyWith(color: MainColors.whiteColor, fontSize: 14.r),
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                'Fabulous',
                style: TextStyles.smallLabelTextStyle(context)
                    .copyWith(color: MainColors.secondColor, fontSize: 14.r),
              ),
              SizedBox(width: 8.w),
              Text(
                '320 reviews',
                style: TextStyles.smallLabelTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
