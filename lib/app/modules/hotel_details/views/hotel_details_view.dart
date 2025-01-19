import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_comments_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_exploring_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_policy_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_services_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_description_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_gallery_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_reviews_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_select_room_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_title_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_room_properties_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_simular_component.dart';
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
              const HotelDetailsTitleComponent(),
              SizedBox(
                height: 20.h,
              ),
              // description
              const HotelDetailsDescriptionComponent(),
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
              const HotelDetailsSelectRoomComponent(),
              SizedBox(
                height: 20.h,
              ),
              // properties
              const HotelRoomPropertiesComponent(),
              SizedBox(
                height: 10.w,
              ),
              const HotelRoomPropertiesComponent(),
              SizedBox(
                height: 20.h,
              ),
              // reviews
              const HotelDetailsReviewsComponent(),
              SizedBox(
                height: 20.h,
              ),
              // comments
              const HotelDetailsCommentsComponent(
                images: [
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                  'https://www.cvent.com/sites/default/files/image/2021-10/hotel%20room%20with%20beachfront%20view.jpg',
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const HotelDetailsServicesComponent(),
              SizedBox(
                height: 20.h,
              ),
              // exploring
              const HotelDetailsPolicyComponent(),
              SizedBox(
                height: 20.h,
              ),
              // policy
              const HotelDetailsPolicyComponent(),
              SizedBox(
                height: 20.h,
              ),
              const HotelSimularComponent(),
              SizedBox(
                height: 10.h,
              ),
              const HotelSimularComponent(),
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
