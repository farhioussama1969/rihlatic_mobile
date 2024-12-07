import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/auth_provider.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/home_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/home_provider.dart';

class HomePageController extends GetxController {
  //TODO: Implement HomePageController

  bool isHomeLoading = false;
  HomeModel? homeData;

  void changeHomeLoading(bool value) {
    isHomeLoading = value;
    update([GetBuildersIdsConstants.homeBody]);
  }

  void changeHomeData(HomeModel? home) {
    homeData = home;
    update([GetBuildersIdsConstants.homeBody]);
  }

  Future<void> getHomeData() async {
    if (isHomeLoading) return;
    await HomeProvider()
        .home(
            onLoading: () => changeHomeLoading(true),
            onFinal: () => changeHomeLoading(false))
        .then((value) {
      if (value != null) {
        changeHomeData(value);
      }
    });
  }

  @override
  void onInit() {
    getHomeData();
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
