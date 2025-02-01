import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:readmore/readmore.dart';
import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class PackageDetailsDescriptionComponent extends StatelessWidget {
  final String description;
  const PackageDetailsDescriptionComponent(
      {super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  StringsAssetsConstants.aboutTheTour,
                  style: TextStyles.mediumLabelTextStyle(context),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
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
              Expanded(
                child: ReadMoreText(
                  description,
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  colorClickableText: MainColors.primaryColor,
                  trimCollapsedText: StringsAssetsConstants.seeMore,
                  trimExpandedText: StringsAssetsConstants.showLess,
                  style: TextStyles.mediumBodyTextStyle(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
