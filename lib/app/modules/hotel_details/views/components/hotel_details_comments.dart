import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelDetailsComments extends StatelessWidget {
  const HotelDetailsComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000.r),
                  child: SizedBox(
                    width: 39.5.r,
                    height: 39.5.r,
                    child: NetworkImageComponent(
                        imageLink:
                            "https://images.pexels.com/photos/8993561/pexels-photo-8993561.jpeg?auto=compress&cs=tinysrgb&w=800"),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Col. Roderick Decker',
                      style: TextStyles.smallLabelTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      '22 April, 2024',
                      style: TextStyles.smallBodyTextStyle(context).copyWith(
                        color: MainColors.textColor(context)!.withOpacity(0.6),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Very convenient location just across the road from Paris Nord station...',
              style: TextStyles.smallBodyTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!, fontSize: 15.r),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: SizedBox(
                    width: 78.5.r,
                    height: 78.5.r,
                    child: NetworkImageComponent(
                        imageLink:
                            "https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg"),
                  ),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: SizedBox(
                    width: 78.5.r,
                    height: 78.5.r,
                    child: NetworkImageComponent(
                        imageLink:
                            "https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg"),
                  ),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: SizedBox(
                    width: 78.5.r,
                    height: 78.5.r,
                    child: NetworkImageComponent(
                        imageLink:
                            "https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg"),
                  ),
                ),
                Spacer(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: SizedBox(
                    width: 78.5.r,
                    height: 78.5.r,
                    child: NetworkImageComponent(
                        imageLink:
                            "https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: MainColors.textColor(context)!.withOpacity(0.15))),
      height: 214.5.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
    );
  }
}
