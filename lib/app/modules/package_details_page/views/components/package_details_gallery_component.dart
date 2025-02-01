import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/components/images/network_image_component.dart';

class PackageDetailsGalleryComponent extends StatefulWidget {
  final List<String> images;

  const PackageDetailsGalleryComponent({super.key, required this.images});

  @override
  State<PackageDetailsGalleryComponent> createState() =>
      _PackageDetailsGalleryComponentState();
}

class _PackageDetailsGalleryComponentState
    extends State<PackageDetailsGalleryComponent> {
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
                autoPlayInterval: const Duration(seconds: 4),
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
              ),
              items: widget.images.map((imageUrl) {
                return Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: NetworkImageComponent(imageLink: imageUrl),
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
                  count: widget.images.length,
                  effect: WormEffect(
                    activeDotColor: MainColors.primaryColor,
                    dotColor: MainColors.inputColor(context)!,
                    dotWidth: 10.r,
                    dotHeight: 10.r,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
