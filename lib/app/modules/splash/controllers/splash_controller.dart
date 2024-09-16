import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/utils/theme_util.dart';
import 'package:rihlatic/app/modules/config_controller.dart';
import 'package:rihlatic/app/modules/user_controller.dart';
import 'package:rihlatic/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    await Get.find<ConfigController>().initialize();
    Future.delayed(const Duration(seconds: 3), () {
      Get.find<UserController>().initialize();
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
