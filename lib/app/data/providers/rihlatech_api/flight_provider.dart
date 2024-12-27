import 'package:rihlatic/app/core/constants/end_points_constants.dart';
import 'package:rihlatic/app/core/services/http_client_service.dart';
import 'package:rihlatic/app/data/models/api_response.dart';
import 'package:rihlatic/app/data/models/flight_model.dart';

class FlightProvider {
  Future<List<FlightModel>?> flights({
    required Function onLoading,
    required Function onFinal,
  }) async {
    ApiResponse? response = await HttpClientService.sendRequest(
      endPoint: EndPointsConstants.flights,
      requestType: HttpRequestTypes.post,
      data: {
        "flightType": "MULTI_CITY", // = ONE_WAY, ROUND_TRIP, MULTI_CITY
        "flightClass":
            "M", //non spécifié= "NN", Economique ="M",Economique premium="W", affaire="C", Première = "F"
        "quantityAdults": 1,
        "quantityChild": 0,
        "quantityInfant": 0,
        "quantityInfantWithSeat": 0,
        "quantityStudent": 0,
        "quantityYouth": 0,
        "quantitySenior": 0,
        "departureId": "CZL",
        "arrivalId": "ALG",
        "departureDate": "2024-11-30",
        "arrivalDate":
            null, // if flightType = "MULTI_CITY" or "ONE_WAY" arrivalDate =null
        "flightRefundable": false,
        "flightWithBaggage": false,
        "directFlightsOnly": false,
        "openReturn": false
      },
      showErrorToast: true,
      onLoading: () => onLoading(),
      onFinal: () => onFinal(),
    );
    if (response?.body != null) {
      List<FlightModel> flights = [];
      for (var flight in response?.body) {
        flights.add(FlightModel.fromJson(flight));
      }
      return flights;
    }
    return null;
  }
}
