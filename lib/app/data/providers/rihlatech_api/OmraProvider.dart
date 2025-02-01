import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rihlatic/app/core/components/pop_ups/toast_component.dart';
import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/omra_model.dart';
import 'package:rihlatic/app/data/models/omra_room_model.dart';
import 'package:rihlatic/app/data/models/room_model.dart';

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
    required List<OmraRoomModel> rooms,
    required Function onLoading,
    required Function onFinal,
  }) async {
    final List<Map<String, dynamic>> roomsData = rooms.map((room) {
      return {
        "room_id": room.roomId,
        "reservation_type": room.reservationType,
        "passengers": {
          "adults": room.passengers?.adults?.map((adult) {
            return {
              "email": adult.email,
              "phone": adult.phone,
              "first_name": adult.firstName,
              "last_name": adult.lastName,
              "sex": adult.sex,
              "passport_nbr": adult.passportNbr,
              "passport_expire_at": adult.passportExpireAt,
              "passport_scan": adult.passportScan,
              "birth_date": adult.birthDate,
            };
          }).toList(),
          "children_without_bed":
              room.passengers?.childrenWithoutBed?.map((child) {
            return {
              "email": child.email,
              "phone": child.phone,
              "first_name": child.firstName,
              "last_name": child.lastName,
              "sex": child.sex,
              "passport_nbr": child.passportNbr,
              "passport_expire_at": child.passportExpireAt,
              "passport_scan": child.passportScan,
              "birth_date": child.birthDate,
            };
          }).toList(),
        },
      };
    }).toList();
    final Map<String, dynamic> requestBody = {
      "omra_departure_id": departureId,
      "rooms": roomsData,
    };

    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.bookOmra,
      requestType: HttpRequestTypes.post,
      showErrorToast: true,
      data: requestBody,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body != null) {
      return response?.body;
    }
    return null;
  }
}
