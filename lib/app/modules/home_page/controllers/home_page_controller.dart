import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/auth_provider.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
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

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmationController =
      TextEditingController();

  bool checkUserStatusLoading = false;
  void changeCheckUserStatusLoading(bool value) {
    checkUserStatusLoading = value;
    update([GetBuildersIdsConstants.homeCheckUserStatusWindow]);
  }

  Future<void> checkUserStatus() async {
    if (checkUserStatusLoading) return;
    await AuthProvider()
        .checkUserStatus(
      email: emailController.text,
      onLoading: () => changeCheckUserStatusLoading(true),
      onFinal: () => changeCheckUserStatusLoading(false),
    )
        .then((value) {
      if (value != null) {
      } else {}
    });
  }
}
