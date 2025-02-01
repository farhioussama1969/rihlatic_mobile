import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/OmraProvider.dart';

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
}
