import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/hotel_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/hotel_provider.dart';

class HotelPageController extends GetxController {
  bool isHotelPageLoading = false;
  List<HotelModel>? hotelData;
  int productQuantity = 20;
  int selectedQuanity = 1;
  int adults = 1;
  int children = 0;

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

  void changeHotelPageLoading(bool value) {
    isHotelPageLoading = value;
    update([GetBuildersIdsConstants.hotelPageBody]);
  }

  void changeHotelData(List<HotelModel>? hotels) {
    hotelData = hotels;
    update([GetBuildersIdsConstants.hotelPageBody]);
  }

  Future<void> getHotelPageData() async {
    if (isHotelPageLoading) return;
    await HotelProvider()
        .hotel(
            onLoading: () => changeHotelPageLoading(true),
            onFinal: () => changeHotelPageLoading(false))
        .then((value) {
      if (value != null) {
        changeHotelData(value);
        print(value);
      }
    });
  }

  @override
  void onInit() {
    getHotelPageData();
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
