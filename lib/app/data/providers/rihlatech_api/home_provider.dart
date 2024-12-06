import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/home_model.dart';

class HomeProvider {
  Future<HomeModel?> home({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.home,
      requestType: HttpRequestTypes.get,
      queryParameters: {'include': 'departures'},
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );
    if (response?.body != null) {
      return HomeModel.fromJson(response?.body);
    }
    return null;
  }
}
