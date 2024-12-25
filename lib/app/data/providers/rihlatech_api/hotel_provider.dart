import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/hotel_model.dart';

class HotelProvider {
  Future<HotelModel?> home({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.hotels,
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'checkin': '2025-12-05',
        'checkout': '2025-12-10',
        'city[mygo][id]': 'TABR',
        'city[cng][id]': '109',
        'room[0][adult]': '1',
        'room[0][children]': '0',
        'room[0][ages]': null,
        'room[0][count]': '1',
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );
    if (response?.body['Hotels'] != null) {
      return HotelModel.fromJson(response?.body);
    }
    return null;
  }
}
