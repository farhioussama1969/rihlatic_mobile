import 'package:get/get.dart';
import 'package:rihlatic/app/modules/config_controller.dart';
import 'package:rihlatic/app/modules/user_controller.dart';

class SplashController extends GetxController {
  @override
  Future<void> onInit() async {
    //await Get.find<ConfigController>().initialize();
    Future.delayed(const Duration(seconds: 3), () {
      Get.find<UserController>().initialize();
    });
    super.onInit();
  }
}
