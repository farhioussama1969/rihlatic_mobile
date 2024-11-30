import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:readmore/readmore.dart';
import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class HotelDetailsDescriptionComponent extends StatelessWidget {
  const HotelDetailsDescriptionComponent({super.key});

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
                  StringsAssetsConstants.descriptionHotelDetails,
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
                  'A stay at Dream Downtown places you in the heart of New York, within a 5-minute walk of native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  colorClickableText: MainColors.primaryColor,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
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
