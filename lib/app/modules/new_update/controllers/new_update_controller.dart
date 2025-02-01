import 'dart:io';

import 'package:get/get.dart';
import 'package:rihlatic/app/modules/config_controller.dart';

class NewUpdateController extends GetxController {
  String currentVersion = Get.find<ConfigController>().appVersion ?? '';
  String lastRequiredVersion = Platform.isAndroid
      ? Get.find<ConfigController>()
              .generalSettingsData
              ?.androidAppVersion
              ?.required ??
          ''
      : Get.find<ConfigController>()
              .generalSettingsData
              ?.iosAppVersion
              ?.required ??
          '';
  String lastOptionalAppVersion = Platform.isAndroid
      ? Get.find<ConfigController>()
              .generalSettingsData
              ?.androidAppVersion
              ?.optional ??
          ''
      : Get.find<ConfigController>()
              .generalSettingsData
              ?.iosAppVersion
              ?.optional ??
          '';



}
