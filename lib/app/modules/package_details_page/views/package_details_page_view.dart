import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/animations/loading_component.dart';
import 'package:rihlatic/app/core/components/buttons/primary_button_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/location_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_comments_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_description_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_exploring_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_gallery_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_policy_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_reviews_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_select_room_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_services_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_details_title_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_room_properties_component.dart';
import 'package:rihlatic/app/modules/package_details_page/views/components/package_simular_component.dart';
import 'package:rihlatic/app/routes/app_pages.dart';

import '../controllers/package_details_page_controller.dart';

class PackageDetailsPageView extends GetView<PackageDetailsPageController> {
  const PackageDetailsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final packageId = Get.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Package Details'),
        centerTitle: true,
        backgroundColor: MainColors.whiteColor,
      ),
      body: GetBuilder<PackageDetailsPageController>(
        id: GetBuildersIdsConstants.PackagePageDetailsBody,
        init: PackageDetailsPageController(),
        builder: (logic) {
          if (!logic.isPackageDetailsLoading && logic.PackageData == null) {
            logic.getPackagePageDetailsData(productId: packageId);
          }

          if (logic.isPackageDetailsLoading) {
            return const Center(child: LoadingComponent());
          }

          final package = logic.PackageData;

          final formattedPrice =
              '${package?.departures!.map((e) => e.priceIni ?? '').toList().reversed.join(' ${StringsAssetsConstants.to} ')}';

          if (package == null) {
            return Center(
              child: Text(
                'No package found',
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
                PackageDetailsGalleryComponent(
                  images: package.gallery
                          ?.map((galleryItem) => galleryItem.url ?? '')
                          .toList() ??
                      [],
                ),
                SizedBox(height: 10.h),
                PackageDetailsTitleComponent(
                  title: package.name ?? '',
                  price: formattedPrice,
                ),
                SizedBox(height: 20.h),
                PackageDetailsDescriptionComponent(
                  description: package.description ?? '',
                ),
                SizedBox(height: 20.h),
                const PackageDetailsExploringComponent(),
                SizedBox(height: 10.h),
                const LocationComponent(),
                SizedBox(height: 20.h),
                const PackageDetailsSelectRoomComponent(),
                SizedBox(height: 20.h),
                const PackageRoomPropertiesComponent(),
                SizedBox(height: 10.w),
                const PackageDetailsReviewsComponent(),
                SizedBox(height: 20.h),
                const PackageDetailsCommentsComponent(images: []),
                SizedBox(height: 20.h),
                const PackageDetailsServicesComponent(),
                SizedBox(height: 20.h),
                const PackageDetailsPolicyComponent(),
                SizedBox(height: 20.h),
                const PackageSimularComponent(),
                const SizedBox(height: 10),
                const PackageSimularComponent(),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: PrimaryButtonComponent(
                      onTap: () {
                        Get.toNamed(Routes.PACKAGE_BOOKING_PAGE);
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
