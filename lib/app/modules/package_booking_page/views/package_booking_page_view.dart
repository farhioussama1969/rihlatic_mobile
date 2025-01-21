import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';
import 'package:rihlatic/app/core/styles/text_styles.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/package_card_component.dart';
import 'package:rihlatic/app/modules/package_booking_page/views/components/select_field_component.dart';

import '../controllers/package_booking_page_controller.dart';

class PackageBookingPageView extends GetView<PackageBookingPageController> {
  const PackageBookingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking'),
        backgroundColor: MainColors.whiteColor,
        centerTitle: true,
      ),
      body: SizedBox(
          width: 1.sw,
          child: Column(
            children: [
              PackageCardComponent(),
              Text(
                StringsAssetsConstants.bookYourTrip,
                style: TextStyles.mediumLabelTextStyle(context).copyWith(
                  color: MainColors.textColor(context)!,
                ),
              ),
              SizedBox(height: 20.h),
              SelectFieldComponent(),
            ],
          )),
    );
  }
}
