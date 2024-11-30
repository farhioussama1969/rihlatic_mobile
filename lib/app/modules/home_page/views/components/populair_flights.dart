import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class PopularFlights extends StatelessWidget {
  final String title;
  final String name;
  final double rate;
  final int reviews;
  final double price;

  const PopularFlights(
      {super.key,
      required this.title,
      required this.name,
      required this.rate,
      required this.reviews,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyles.mediumLabelTextStyle(context)
                  .copyWith(color: MainColors.textColor(context)),
            ),
            Spacer(),
            Text(
              'See More',
              style: TextStyles.smallLabelTextStyle(context)
                  .copyWith(color: MainColors.primaryColor),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 217.h, // Height of each list item container
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    EdgeInsets.only(right: 10.w), // Add margin between items
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                      child: SizedBox(
                        width: 175.w,
                        height: 100.h,
                        child: NetworkImageComponent(
                          imageLink:
                              'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    name,
                                    style: TextStyles.smallLabelTextStyle(
                                            context)
                                        .copyWith(
                                            color:
                                                MainColors.textColor(context)!,
                                            height: 1),
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    '${rate.toString()}',
                                    style:
                                        TextStyles.smallBodyTextStyle(context)
                                            .copyWith(
                                                color: MainColors.whiteColor,
                                                fontSize: 14.r),
                                  ),
                                  decoration: BoxDecoration(
                                      color: MainColors.primaryColor,
                                      borderRadius:
                                          BorderRadiusDirectional.only(
                                              topEnd: Radius.circular(8.r),
                                              bottomStart:
                                                  Radius.circular(8.r))),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  '( ${reviews.toString()} reviews)',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Row(
                              children: [
                                Text(
                                  'From',
                                  style: TextStyles.smallBodyTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(0.6),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Text(
                                  'US\$ ${price.toString()}',
                                  style: TextStyles.smallLabelTextStyle(context)
                                      .copyWith(
                                    color: MainColors.textColor(context)!
                                        .withOpacity(1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: MainColors.textColor(context)!.withOpacity(0.15)),
                ),
                width: 175.w,
              );
            },
          ),
        ),
      ],
    );
  }
}
