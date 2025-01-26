import 'package:get/get.dart';
import 'package:rihlatic/app/core/constants/get_builders_ids_constants.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/providers/rihlatech_api/OmraProvider.dart';

class OmraDetailsPageController extends GetxController {
  bool isOmraDetailsLoading = false;
  OmraModel? OmraData;

  void changePackagePageDetailsLoading(bool value) {
    isOmraDetailsLoading = value;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  void changeOmraData(OmraModel? omra) {
    OmraData = omra;
    update([GetBuildersIdsConstants.OmrasPageBody]);
  }

  Future<void> getOmraPageDetailsData({required int? productId}) async {
    if (isOmraDetailsLoading) return;
    await Omraprovider()
        .getOmraDetails(
            onLoading: () => changePackagePageDetailsLoading(true),
            onFinal: () => changePackagePageDetailsLoading(false),
            omraId: productId)
        .then((value) {
      if (value != null) {
        changeOmraData(value);
      }
    });
  }
}
