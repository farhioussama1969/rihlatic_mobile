import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class PopularFlights extends StatelessWidget {
  final String title;

  const PopularFlights({
    super.key,
    required this.title,
  });

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
                margin: EdgeInsets.only(right: 10.w),
                width: 175.w,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 175.w,
                        child: NetworkImageComponent(
                          imageLink:
                              'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: MainColors.blackColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Algiers',
                            style: TextStyles.mediumLabelTextStyle(context)
                                .copyWith(
                              color: MainColors.whiteColor,
                              height: 1,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            '23 establishments',
                            style:
                                TextStyles.smallBodyTextStyle(context).copyWith(
                              color: MainColors.whiteColor,
                              height: 1,
                            ),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
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
