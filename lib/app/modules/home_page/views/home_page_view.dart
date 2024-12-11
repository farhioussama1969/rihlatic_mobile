import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/home_page/views/components/discover_algeria.dart';
import 'package:rihlatic/app/modules/home_page/views/components/gallery_home_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/list_filtre_view_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/organized_trip_component.dart';
import 'package:rihlatic/app/modules/home_page/views/components/favorites_distinations.dart';
import 'package:rihlatic/app/modules/home_page/views/components/popular_flights.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 1.sw,
        child: GetBuilder<HomePageController>(
            id: GetBuildersIdsConstants.homeBody,
            builder: (logic) {
              return logic.isHomeLoading
                  ? Center(child: LoadingComponent())
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // title
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hey Aymen',
                                  style: TextStyles.largeLabelTextStyle(context)
                                      .copyWith(
                                          color:
                                              MainColors.textColor(context)!),
                                ),
                                Text(
                                  'Welcome to Rihlatic',
                                  style: TextStyles.largeBodyTextStyle(context)
                                      .copyWith(
                                          color: MainColors.textColor(context)!
                                              .withOpacity(0.6)),
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
                          if (logic.homeData?.discoverAlgeria != null &&
                              logic.homeData!.discoverAlgeria!.isNotEmpty)
                            DiscoverAlgeria(
                              title: 'Discover Algeria',
                              itemsList: logic.homeData?.discoverAlgeria ?? [],
                            ),

                          SizedBox(
                            height: 20.h,
                          ),

                          if (logic.homeData?.favoriteDestinations != null &&
                              logic.homeData!.favoriteDestinations!.isNotEmpty)
                            FavoritesDestinations(
                              title: 'Favorites destinations',
                              itemsList:
                                  logic.homeData?.favoriteDestinations ?? [],
                            ),
                          SizedBox(
                            height: 20.h,
                          ),
                          if (logic.homeData?.organzidTrip != null &&
                              logic.homeData!.organzidTrip!.isNotEmpty)
                            OrganizedTripComponent(
                              title: 'Organized trip',
                              itemsList: logic.homeData?.organzidTrip ?? [],
                            ),
                          SizedBox(
                            height: 20.h,
                          ),
                          if (logic.homeData?.popularFlights != null &&
                              logic.homeData!.popularFlights!.isNotEmpty)
                            PopularFlights(
                              title: 'Popular Flights',
                              itemsList: logic.homeData?.popularFlights ?? [],
                            ),
                          SizedBox(
                            height: 50.h,
                          ),
                        ],
                      ),
                    );
            }),
      ),
    );
  }
}
