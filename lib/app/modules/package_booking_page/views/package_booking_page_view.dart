import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rihlatic/app/core/styles/main_colors.dart';

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
      body: const Center(
        child: Text(
          'PackageBookingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
