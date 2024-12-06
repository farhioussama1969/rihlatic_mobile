import 'package:get/get.dart';
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
}
