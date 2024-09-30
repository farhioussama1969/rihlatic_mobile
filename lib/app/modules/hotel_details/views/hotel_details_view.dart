import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rihlatic/app/core/components/images/network_image_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_description.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_gallery_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_reviews.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_select_room.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_title.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_room_properties.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/location_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/populair_amenities_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/icons_assets_constants.dart';
import '../../../core/constants/strings_assets_constants.dart';
import '../../../core/styles/main_colors.dart';
import '../../../core/styles/text_styles.dart';
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
              Container(
                child: Column(),
              ),
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
