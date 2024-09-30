import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class HotelDetailsDescription extends StatelessWidget {
  const HotelDetailsDescription({super.key});

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
                  'Description & Details',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!,
                  ),
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
                child: Text(
                  'A stay at Dream Downtown places you in the heart of New York, within a 5-minute walk of Read more...',
                  style: TextStyles.mediumBodyTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(0.6),
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
