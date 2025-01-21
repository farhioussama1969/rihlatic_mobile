import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';

class HotelDetailsCommentsComponent extends StatelessWidget {
  final List<String> images;

  const HotelDetailsCommentsComponent({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: MainColors.textColor(context)!.withOpacity(0.15))),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
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
                    child: const NetworkImageComponent(
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
              style: TextStyles.mediumBodyTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!, fontSize: 15.r),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                for (var i = 0; i < images.length && i < 4; i++)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SizedBox(
                        width: 78.5,
                        height: 78.5,
                        child: i == 3 && images.length > 4
                            ? Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.network(
                                    images[i],
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    color:
                                        MainColors.blackColor.withOpacity(0.5),
                                    child: Center(
                                      child: Text(
                                        '+${images.length - 4}',
                                        style: const TextStyle(
                                          color: MainColors.whiteColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Image.network(
                                images[i],
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
