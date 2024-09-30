import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_comments.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_exploring.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_policy.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_services.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_description.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_gallery_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_reviews.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_select_room.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_title.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_room_properties.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_simular.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/location_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/populair_amenities_component.dart';

import '../../../core/styles/main_colors.dart';
import '../controllers/hotel_details_controller.dart';

class HotelDetailsView extends GetView<HotelDetailsController> {
  const HotelDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HotelDetailsView'),
        centerTitle: true,
        backgroundColor: MainColors.whiteColor,
      ),
      body: SizedBox(
        width: 1.sw,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              const HotelDetailsGalleryComponent(),
              SizedBox(
                height: 10.h,
              ),
              // hotel details title
              const HotelDetailsTitle(),
              SizedBox(
                height: 20.h,
              ),
              // description
              const HotelDetailsDescription(),
              SizedBox(
                height: 10.h,
              ),
              // populair amenities
              const PopulairAmenitiesComponent(),
              SizedBox(
                height: 10.h,
              ),
              // location
              const LocationComponent(),
              SizedBox(
                height: 20.h,
              ),
              // Select your room
              const HotelDetailsSelectRoom(),
              SizedBox(
                height: 20.h,
              ),
              // properties
              const HotelRoomProperties(),
              SizedBox(
                height: 10.w,
              ),
              const HotelRoomProperties(),
              SizedBox(
                height: 20.h,
              ),
              // reviews
              const HotelDetailsReviews(),
              SizedBox(
                height: 20.h,
              ),
              // comments
              const HotelDetailsComments(),
              SizedBox(
                height: 20.h,
              ),
              const HotelDetailsServices(),
              SizedBox(
                height: 20.h,
              ),
              // exploring
              const HotelDetailsExploring(),
              SizedBox(
                height: 20.h,
              ),
              // policy
              const HotelDetailsPolicy(),
              SizedBox(
                height: 20.h,
              ),
              const HotelSimular(),
              SizedBox(
                height: 10,
              ),
              const HotelSimular(),
              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
