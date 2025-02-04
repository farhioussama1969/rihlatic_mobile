import 'package:get/get.dart';
import 'package:rihlatic/app/core/components/pop_ups/toast_component.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/models/omra_room_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/OmraProvider.dart';

class OmraPaymentPageController extends GetxController {
  bool isOmraPaymentLoading = false;
  OmraModel? OmraData;
  int productQuantity = 20;
  int selectedQuanity = 1;

  void changeSelectedProductQuantity(int newQuantity) {
    selectedQuanity = newQuantity;
    update();
  }

  void changeOmraPagePaymentLoading(bool value) {
    isOmraPaymentLoading = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void changeOmraData(OmraModel? Omras) {
    OmraData = Omras;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  Future<void> bookOmra(
      {required int departureId, required List<OmraRoomModel> rooms}) async {
    try {
      bool? success = await Omraprovider().book(
        departureId: departureId,
        rooms: rooms,
        onLoading: () => changeOmraPagePaymentLoading(true),
        onFinal: () => changeOmraPagePaymentLoading(false),
      );

      if (success == true) {
        ToastComponent.showSuccessToast(Get.context!,
            text: "Booking successful!");
      } else {
        ToastComponent.showErrorToast(Get.context!, text: 'Booking failed');
      }
    } catch (e) {
      ToastComponent.showErrorToast(Get.context!,
          text: 'An error occurred: $e');
    }
  }
}
