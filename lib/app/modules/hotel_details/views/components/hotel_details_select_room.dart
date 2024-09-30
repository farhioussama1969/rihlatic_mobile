import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelDetailsSelectRoom extends StatelessWidget {
  const HotelDetailsSelectRoom({super.key});

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
                  'Select your room',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!,
                    fontSize: 18.r,
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
                  'Rooms Presented are based on : ',
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.textColor(context)!.withOpacity(0.6),
                    fontSize: 15.r,
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
                child: Row(
                  children: [
                    Text(
                      '1 Rooms',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                          color: MainColors.blackColor.withOpacity(0.4),
                          fontSize: 14.r),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.4))),
                      width: 22.r,
                      height: 22.r,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          width: 12,
                          IconsAssetsConstants.editIcon,
                          color: MainColors.blackColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: MainColors.blackColor.withOpacity(0.08),
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(19.r))),
                padding:
                    EdgeInsets.only(left: 20.0, right: 10.0, top: 7, bottom: 7),
              ),
              SizedBox(width: 15.w),
              Container(
                child: Row(
                  children: [
                    Text(
                      '4 Adult',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                          color: MainColors.blackColor.withOpacity(0.4),
                          fontSize: 14.r),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.4))),
                      width: 22.r,
                      height: 22.r,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          width: 12,
                          IconsAssetsConstants.editIcon,
                          color: MainColors.blackColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: MainColors.blackColor.withOpacity(0.08),
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(19.r))),
                padding:
                    EdgeInsets.only(left: 20.0, right: 10.0, top: 7, bottom: 7),
              ),
              SizedBox(width: 15.w),
              Container(
                child: Row(
                  children: [
                    Text(
                      '5 kids',
                      style: TextStyles.mediumLabelTextStyle(context).copyWith(
                          color: MainColors.blackColor.withOpacity(0.4),
                          fontSize: 14.r),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          border: Border.all(
                              color: MainColors.textColor(context)!
                                  .withOpacity(0.4))),
                      width: 22.r,
                      height: 22.r,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          width: 12,
                          IconsAssetsConstants.editIcon,
                          color: MainColors.blackColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: MainColors.blackColor.withOpacity(0.08),
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(19.r))),
                padding:
                    EdgeInsets.only(left: 20.0, right: 10.0, top: 7, bottom: 7),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
