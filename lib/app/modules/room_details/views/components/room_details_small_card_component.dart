import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class RoomDetailsSmallCardComponent extends StatelessWidget {
  final String icon;
  final String titleName;
  final String itemCount;
  final String unit;

  const RoomDetailsSmallCardComponent(
      {super.key,
      required this.icon,
      required this.titleName,
      required this.itemCount,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: MainColors.textColor(context)!.withOpacity(0.15))),
      width: 188.w,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                icon,
                color: MainColors.textColor(context)!,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                titleName,
                style: TextStyles.smallLabelTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                itemCount,
                style: TextStyles.smallBodyTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!.withOpacity(0.6),
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                unit,
                style: TextStyles.smallBodyTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
