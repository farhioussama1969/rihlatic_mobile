import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/location_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_comments_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_description_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_exploring_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_gallery_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_policy_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_reviews_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_select_room_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_services_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_details_title_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_room_properties_component.dart';
import 'package:rihlatic/app/modules/omra_details_page/views/components/omra_simular_component.dart';
import 'package:rihlatic/app/routes/app_pages.dart';

import '../controllers/omra_details_page_controller.dart';

class OmraDetailsPageView extends GetView<OmraDetailsPageController> {
  const OmraDetailsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final omraId = Get.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Details'),
        centerTitle: true,
        backgroundColor: MainColors.whiteColor,
      ),
      body: GetBuilder<OmraDetailsPageController>(
        id: GetBuildersIdsConstants.OmrasPageBody,
        init: OmraDetailsPageController(),
        builder: (logic) {
          if (!logic.isOmraDetailsLoading && logic.OmraData == null) {
            logic.getOmraPageDetailsData(productId: omraId);
          }

          if (logic.isOmraDetailsLoading) {
            return const Center(child: LoadingComponent());
          }

          final omra = logic.OmraData;

          final formattedPrice =
              '${omra?.departures!.map((e) => e.priceIni ?? '').toList().reversed.join(' ${','} ')}';

          if (omra == null) {
            return Center(
              child: Text(
                'No omra found',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: MainColors.textColor(context)!,
                ),
              ),
            );
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                OmraDetailsGalleryComponent(
                  images: omra.gallery
                          ?.map((galleryItem) => galleryItem.url ?? '')
                          .toList() ??
                      [],
                ),
                SizedBox(height: 10.h),
                OmraDetailsTitleComponent(
                  title: omra.name ?? '',
                  price: formattedPrice,
                ),
                SizedBox(height: 20.h),
                OmraDetailsDescriptionComponent(
                  description: omra.description ?? '',
                ),
                SizedBox(height: 20.h),
                const OmraDetailsExploringComponent(),
                SizedBox(height: 10.h),
                const LocationComponent(),
                SizedBox(height: 20.h),
                const OmraDetailsSelectRoomComponent(),
                SizedBox(height: 20.h),
                const OmraRoomPropertiesComponent(),
                SizedBox(height: 10.w),
                const OmraDetailsReviewsComponent(),
                SizedBox(height: 20.h),
                const OmraDetailsCommentsComponent(images: []),
                SizedBox(height: 20.h),
                const OmraDetailsServicesComponent(),
                SizedBox(height: 20.h),
                const OmraDetailsPolicyComponent(),
                SizedBox(height: 20.h),
                const OmraSimularComponent(),
                const SizedBox(height: 10),
                const OmraSimularComponent(),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: PrimaryButtonComponent(
                      onTap: () {
                        Get.toNamed(Routes.OMRA_BOOKING_PAGE,
                            arguments: omra.id);
                      },
                      text: StringsAssetsConstants.book,
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          );
        },
      ),
    );
  }
}
