import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/packages_page/views/components/package_card_component.dart';

import '../controllers/packages_page_controller.dart';

class PackagesPageView extends GetView<PackagesPageController> {
  const PackagesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.whiteColor,
        title: const Text('Packages',
            style: TextStyle(color: MainColors.blackColor)),
        centerTitle: true,
      ),
      body: SizedBox(
        width: 1.sw,
        child: GetBuilder<PackagesPageController>(
          id: GetBuildersIdsConstants.hotelPageBody,
          builder: (logic) {
            return logic.isPackagesPageLoading
                ? Center(child: LoadingComponent())
                : Column(
                    children: [
                      const PackgesFiltreComponent(),
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
                      if (logic.packgeData != null &&
                          logic.packgeData!.isNotEmpty)
                        PackageCardComponent(itemsList: logic.packgeData!),
                    ],
                  );
          },
        ),
      ),
    );
  }
}
