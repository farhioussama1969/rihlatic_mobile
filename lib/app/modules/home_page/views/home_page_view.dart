import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/home_page/views/components/gallery_home_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/list_filtre_view_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/liste_filtre_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/organized_trip_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/populair_flights.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_gallery_component.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePageView'),
        centerTitle: true,
        backgroundColor: MainColors.whiteColor,
      ),
      body: SizedBox(
        width: 1.sw,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey Aymen',
                      style: TextStyles.largeLabelTextStyle(context)
                          .copyWith(color: MainColors.textColor(context)!),
                    ),
                    Text(
                      'Welcome to Rihlatic',
                      style: TextStyles.largeBodyTextStyle(context).copyWith(
                          color:
                              MainColors.textColor(context)!.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              // banner
              const GalleryHomeComponent(),
              SizedBox(
                height: 20.h,
              ),
              // filtre
              const ListFiltreViewComponent(),
              SizedBox(
                height: 20.h,
              ),
              // populair flights
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const PopularFlights(
                  title: 'Popular Flights',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const PopularFlights(
                  title: 'Popular Hotels',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: const OrganizedTripComponent(
                  title: 'Organized trip',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
