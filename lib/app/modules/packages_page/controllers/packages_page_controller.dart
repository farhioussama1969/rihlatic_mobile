import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/organized_trip_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/package_provider.dart';

class PackagesPageController extends GetxController {
  bool isPackagePageLoading = false;
  List<OrganizedTripModel>? PackageData;
  List<OrganizedTripModel>? filteredPackageData;
  int productQuantity = 20;
  int selectedQuanity = 1;
  int adults = 1;
  int children = 0;
  String? destination;
  DateTime? checkInDate;
  DateTime? checkOutDate;

  int get guestCount => adults + children;

  void changeSelectedProductQuantity(int value) {
    selectedQuanity = value;
    update(['50']);
  }

  void updateAdults(int value) {
    adults = value;
    update(['guestUpdate']);
  }

  void updateChildren(int value) {
    children = value;
    update(['guestUpdate']);
  }

  void updateDestination(String? value) {
    destination = value;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  void updateCheckInDate(DateTime? value) {
    checkInDate = value;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  void updateCheckOutDate(DateTime? value) {
    checkOutDate = value;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  void changePackagePageLoading(bool value) {
    isPackagePageLoading = value;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  void changePackageData(List<OrganizedTripModel>? Packages) {
    PackageData = Packages;
    filteredPackageData = Packages;
    update([GetBuildersIdsConstants.PackagePageBody]);
  }

  Future<void> getPackagePageData() async {
    if (isPackagePageLoading) return;
    await PackageProvider()
        .package(
            onLoading: () => changePackagePageLoading(true),
            onFinal: () => changePackagePageLoading(false))
        .then((value) {
      if (value != null) {
        changePackageData(value);
      }
    });
  }

  @override
  void onInit() {
    getPackagePageData();
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

  void applyFilters() {
    if (PackageData == null) return;

    filteredPackageData = PackageData!.where((package) {
      // Filter by destination
      if (destination != null && destination!.isNotEmpty) {
        final destinationMatch = package.destinations?.any((dest) =>
                dest.name?.toLowerCase().contains(destination!.toLowerCase()) ??
                false) ??
            false;
        if (!destinationMatch) return false;
      }

      return true;
    }).toList();

    update([GetBuildersIdsConstants.PackagePageBody]);
  }
}
