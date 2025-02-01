import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/data/models/flight_model.dart';

class PopularFlightsComponent extends StatelessWidget {
  final String title;
  final List<FlightModel> itemsList;

  const PopularFlightsComponent(
      {super.key, required this.title, required this.itemsList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyles.mediumLabelTextStyle(context)
                    .copyWith(color: MainColors.textColor(context)),
              ),
              const Spacer(),
              Text(
                'See More',
                style: TextStyles.smallLabelTextStyle(context)
                    .copyWith(color: MainColors.primaryColor),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 300.h,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            scrollDirection: Axis.horizontal,
            physics:
                const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: itemsList.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: MainColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: MainColors.textColor(context)!.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(2, 4), // Shadow position
                    ),
                  ],
                ),
                width: 242.w,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.r),
                          topRight: Radius.circular(16.r),
                          bottomLeft: Radius.circular(20.r),
                          bottomRight: Radius.circular(20.r)),
                      child: SizedBox(
                        width: 242.w,
                        height: 190.h,
                        child: const NetworkImageComponent(
                          imageLink:
                              'https://en.wikipedia.org/wiki/London#/media/File:London_Skyline_(125508655).jpeg',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                itemsList[index].departure_airport?.city ?? '',
                                style: TextStyles.mediumLabelTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!,
                                        height: 1),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              SvgPicture.asset(
                                IconsAssetsConstants.arrowRightsIcon,
                                color: MainColors.blackColor,
                                width: 30.r,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                itemsList[index].arrival_airport?.city ?? '',
                                style: TextStyles.mediumLabelTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!,
                                        height: 1),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                itemsList[index].arrival_airport?.city ?? '',
                                style: TextStyles.smallLabelTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!
                                            .withOpacity(0.6),
                                        height: 1),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              SvgPicture.asset(
                                IconsAssetsConstants.arrowRightsIcon,
                                color: MainColors.blackColor.withOpacity(0.6),
                                width: 20.r,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                itemsList[index].departure_airport?.city ?? '',
                                style: TextStyles.smallLabelTextStyle(context)
                                    .copyWith(
                                        color: MainColors.textColor(context)!
                                            .withOpacity(0.6),
                                        height: 1),
                                maxLines: 2,
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
