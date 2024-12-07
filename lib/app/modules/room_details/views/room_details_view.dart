import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/icons_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_description_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/hotel_details_gallery_component.dart';
import 'package:rihlatic/app/modules/hotel_details/views/components/populair_amenities_component.dart';
import 'package:rihlatic/app/modules/room_details/views/components/room_details_small_card_component.dart';

import '../../hotel_details/views/components/hotel_details_title_component.dart';
import '../controllers/room_details_controller.dart';

class RoomDetailsView extends GetView<RoomDetailsController> {
  const RoomDetailsView({super.key});
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const RoomDetailsSmallCardComponent(
                          titleName: 'bed type',
                          itemCount: 'X2',
                          unit: 'Bronze Queen',
                          icon: IconsAssetsConstants.bedIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const RoomDetailsSmallCardComponent(
                          titleName: 'Size (m*)',
                          itemCount: '120.00',
                          unit: '',
                          icon: IconsAssetsConstants.sizeIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const RoomDetailsSmallCardComponent(
                          titleName: 'Max(children)',
                          itemCount: '1',
                          unit: '',
                          icon: IconsAssetsConstants.childKidIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        const RoomDetailsSmallCardComponent(
                          titleName: 'Floor',
                          itemCount: '13',
                          unit: '',
                          icon: IconsAssetsConstants.floorIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const RoomDetailsSmallCardComponent(
                          titleName: 'Max(adult)',
                          itemCount: '4',
                          unit: '',
                          icon: IconsAssetsConstants.maleUserIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const RoomDetailsSmallCardComponent(
                          titleName: 'Max(kids)',
                          itemCount: '0',
                          unit: '',
                          icon: IconsAssetsConstants.kidsIcon,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ],
                ),
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
