import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/organized_trip_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/package_provider.dart';

class PackageBookingPageController extends GetxController {
  bool isPackageDetailsLoading = false;
  OrganizedTripModel? PackageData;
  int productQuantity = 20;
  int selectedQuanity = 1;

  void changeSelectedProductQuantity(int newQuantity) {
    selectedQuanity = newQuantity;
    update();
  }

  void changePackagePageDetailsLoading(bool value) {
    isPackageDetailsLoading = value;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  void changePackageData(OrganizedTripModel? Packages) {
    PackageData = Packages;
    update([GetBuildersIdsConstants.PackagePageDetailsBody]);
  }

  Future<void> getPackagePageDetailsData({required int? productId}) async {
    if (isPackageDetailsLoading) return;
    await PackageProvider()
        .getPackageDetails(
            onLoading: () => changePackagePageDetailsLoading(true),
            onFinal: () => changePackagePageDetailsLoading(false),
            packageId: productId)
        .then((value) {
      if (value != null) {
        changePackageData(value);
      }
    });
  }
}
