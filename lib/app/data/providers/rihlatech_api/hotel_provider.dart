import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/hotel_model.dart';

class HotelProvider {
  Future<List<HotelModel>?> hotel({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.hotels,
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'checkin': '2025-02-01',
        'checkout': '2025-02-05',
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
    if (response?.body['result']['Hotels'] != null) {
      List<dynamic> hotelsJson = response?.body['Hotels'];
      return hotelsJson
          .map((hotelJson) => HotelModel.fromJson(hotelJson))
          .toList();
    }
    return null;
  }
}
