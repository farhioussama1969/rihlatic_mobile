import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/main_colors.dart';
import '../../../../core/styles/text_styles.dart';

class HotelDetailsTitleComponent extends StatelessWidget {
  const HotelDetailsTitleComponent({super.key});

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
                  'Leonardo Hotel Barcelona Gran Via',
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
              Container(
                child: Text(
                  '4.5',
                  style: TextStyles.smallLabelTextStyle(context)
                      .copyWith(color: MainColors.whiteColor, fontSize: 14.r),
                ),
                decoration: BoxDecoration(
                    color: MainColors.secondColor,
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(8.r),
                        bottomStart: Radius.circular(8.r))),
                padding: EdgeInsets.symmetric(horizontal: 4.0),
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
