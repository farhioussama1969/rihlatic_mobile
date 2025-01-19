import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/hotel_page/views/components/hotel_card_component.dart';
import 'package:rihlatic/app/modules/hotel_page/views/components/hotel_filtre_component.dart';
import '../controllers/hotel_page_controller.dart';

class HotelPageView extends GetView<HotelPageController> {
  const HotelPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.whiteColor,
        title: const Text('Hotel Search',
            style: TextStyle(color: MainColors.blackColor)),
        centerTitle: true,
      ),
      body: SizedBox(
        width: 1.sw,
        child: GetBuilder<HotelPageController>(
          id: GetBuildersIdsConstants.hotelPageBody,
          builder: (logic) {
            return logic.isHotelPageLoading
                ? Center(child: LoadingComponent())
                : Column(
                    children: [
                      const HotelFiltreComponent(),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              'Search result',
                              style: TextStyles.mediumLabelTextStyle(context)
                                  .copyWith(
                                color: MainColors.textColor(context)!,
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                      if (logic.hotelData != null &&
                          logic.hotelData!.isNotEmpty)
                        HotelCardComponent(itemsList: logic.hotelData!),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
