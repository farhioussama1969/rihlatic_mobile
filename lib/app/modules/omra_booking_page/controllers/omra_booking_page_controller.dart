import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/pop_ups/toast_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/core/constants/strings_assets_constants.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/models/omra_room_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/OmraProvider.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/auth_provider.dart';
import 'package:rihlatic/app/modules/omra_booking_page/views/omra_booking_page_view.dart';
import 'package:rihlatic/app/modules/user_controller.dart';

class OmraBookingPageController extends GetxController {
  bool isOmraDetailsLoading = false;
  OmraModel? OmraData;
  int productQuantity = 20;
  int selectedQuanity = 1;

  void changeSelectedProductQuantity(int newQuantity) {
    selectedQuanity = newQuantity;
    update();
  }

  void changeOmraPageDetailsLoading(bool value) {
    isOmraDetailsLoading = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void changeOmraData(OmraModel? Omras) {
    OmraData = Omras;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  Future<void> getOmraPageDetailsData({required int? productId}) async {
    if (isOmraDetailsLoading) return;
    await Omraprovider()
        .getOmraDetails(
            onLoading: () => changeOmraPageDetailsLoading(true),
            onFinal: () => changeOmraPageDetailsLoading(false),
            omraId: productId)
        .then((value) {
      if (value != null) {
        changeOmraData(value);
      }
    });
  }

  Future<void> bookOmra({
    required int departureId,
    required List<OmraRoomModel> rooms,
  }) async {
    await Omraprovider()
        .book(
      departureId: departureId,
      rooms: rooms,
      onLoading: () => changeOmraPageDetailsLoading(true),
      onFinal: () => changeOmraPageDetailsLoading(false),
    )
        .then((success) {
      if (success == true) {
        ToastComponent.showSuccessToast(Get.context!,
            text: "Booking successful!");
      } else {
        ToastComponent.showErrorToast(Get.context!, text: "Booking failed.");
      }
    });
  }
}
