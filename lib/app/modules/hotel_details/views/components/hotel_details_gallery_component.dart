import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/components/images/network_image_component.dart';

class HotelDetailsGalleryComponent extends StatefulWidget {
  const HotelDetailsGalleryComponent({super.key});

  @override
  State<HotelDetailsGalleryComponent> createState() =>
      _HotelDetailsGalleryComponentState();
}

class _HotelDetailsGalleryComponentState
    extends State<HotelDetailsGalleryComponent> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 265.h,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.h,
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                onPageChanged: (index, controller) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.amber),
                      child: NetworkImageComponent(
                        imageLink:
                            'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                      )),
                );
              }).toList(),
            ),
          ),
        ),
        PositionedDirectional(
          bottom: 10.h,
          child: SizedBox(
            width: 1.sw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: currentPageIndex,
                  count: 5,
                  effect: WormEffect(
                      activeDotColor: MainColors.primaryColor,
                      dotColor: MainColors.inputColor(context)!,
                      dotWidth: 10.r,
                      dotHeight: 10.r),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
