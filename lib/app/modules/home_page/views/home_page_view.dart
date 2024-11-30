import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/home_page/views/components/list_filtre_view_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/populair_flights.dart';

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Column(
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
                SizedBox(
                  height: 20.h,
                ),

                // banner

                // filtre
                const ListFiltreViewComponent(),
                SizedBox(
                  height: 20.h,
                ),
                // populair flights
                const PopularFlights(
                  title: 'Popular Flights',
                  name: 'The Nantucket Hotel & Resort',
                  rate: 4.5,
                  reviews: 320,
                  price: 141,
                ),
                SizedBox(
                  height: 20.h,
                ),
                const PopularFlights(
                  title: 'Popular Hotels',
                  name: 'The Nantucket Hotel & Resort',
                  rate: 4.6,
                  reviews: 200,
                  price: 2100,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
