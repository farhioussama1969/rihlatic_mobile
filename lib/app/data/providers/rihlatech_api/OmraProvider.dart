import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/models/organized_trip_model.dart';

class Omraprovider {
  Future<List<OmraModel>?> omra({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.omra,
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'include': 'omraDepartures',
        'filter[category]': ',Simple',
        'filter[departure_date]': '',
        'filter[return_date]': '',
        'filter[search]': '',
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['omra'] != null) {
      return (response?.body['omra'] as List)
          .map((e) => OmraModel.fromJson(e))
          .toList();
    }
    return null;
  }

  Future<OmraModel?> getOmraDetails(
      {required Function onLoading,
      required Function onFinal,
      required int? omraId}) async {
    final response = await HttpClientService.sendRequest(
      endPoint: '${EndPointsConstants.omra}/$omraId',
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'include':
            'omraDepartures,media,omraDepartures.flight,omraDepartures.media,omraDepartures.omraDepartureSchedules,omraDepartures.pricing,agencies,destinations.airport',
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['omra'] != null) {
      return OmraModel.fromJson(response!.body['omra']);
    }
    return null;
  }

  Future<bool?> book({
    required int departureId,
    // required List<RoomModel> rooms,
    required String token,
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.bookOmra,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: {
        "departureId": departureId,
        // "rooms": rooms,
        "token": token,
      },
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return response?.body;
    }
    return null;
  }
}
