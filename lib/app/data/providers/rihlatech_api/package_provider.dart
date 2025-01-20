import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/organized_trip_model.dart';

class PackageProvider {
  Future<List<OrganizedTripModel>?> package({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.packages,
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'include': 'departures',
        'filter[categories]': '',
        'filter[departure_date]': '',
        'filter[return_date]': '',
        'filter[search]': '',
        'filter[type]': '',
        'filter[destinationId]': '2',
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['packages'] != null) {
      // Assuming 'packages' is an array of organized trip objects
      return (response?.body['packages'] as List)
          .map((e) => OrganizedTripModel.fromJson(e))
          .toList();
    }
    return null;
  }

  Future<OrganizedTripModel?> getPackageDetails(
      {required Function onLoading,
      required Function onFinal,
      required int? packageId}) async {
    final response = await HttpClientService.sendRequest(
      endPoint: '${EndPointsConstants.packages}/$packageId',
      requestType: HttpRequestTypes.get,
      queryParameters: {
        'include':
            'departures,media,departures.flight,departures.media,departures.departureSchedules,departures.pricing,agencies,destinations.airport',
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );

    if (response?.body['package'] != null) {
      return OrganizedTripModel.fromJson(response!.body['package']);
    }
    return null;
  }
}
