import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/OmraProvider.dart';

class OmraPageController extends GetxController {
  bool isOmraPageLoading = false;
  List<OmraModel>? OmraData;
  List<OmraModel>? filteredOmraData;
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
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void updateCheckInDate(DateTime? value) {
    checkInDate = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void updateCheckOutDate(DateTime? value) {
    checkOutDate = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void changeOmraPageLoading(bool value) {
    isOmraPageLoading = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void changeOmraData(List<OmraModel>? Omras) {
    OmraData = Omras;
    filteredOmraData = Omras;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  Future<void> getOmraPageData() async {
    if (isOmraPageLoading) return;
    await Omraprovider()
        .omra(
            onLoading: () => changeOmraPageLoading(true),
            onFinal: () => changeOmraPageLoading(false))
        .then((value) {
      if (value != null) {
        changeOmraData(value);
      }
    });
  }

  @override
  void onInit() {
    getOmraPageData();
    super.onInit();
  }

  void applyFilters() {
    if (OmraData == null) return;

    filteredOmraData = OmraData!.where((omra) {
      if (destination != null && destination!.isNotEmpty) {
        final destinationMatch = omra.destinations?.any((dest) =>
                dest.name?.toLowerCase().contains(destination!.toLowerCase()) ??
                false) ??
            false;
        if (!destinationMatch) return false;
      }

      return true;
    }).toList();

    update([GetBuildersIdsConstants.OmrasPageBody]);
  }
}
