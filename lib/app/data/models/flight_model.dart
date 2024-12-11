import 'package:rihlatic/app/data/models/airoport_model.dart';

class FlightModel {
  AirportModel? departure_airport;
  AirportModel? arrival_airport;

  FlightModel({this.departure_airport, this.arrival_airport});

  FlightModel.fromJson(Map<String, dynamic> json) {
    departure_airport = json['departure_airport'] != null
        ? new AirportModel.fromJson(json['departure_airport'])
        : null;
    arrival_airport = json['arrival_airport'] != null
        ? new AirportModel.fromJson(json['arrival_airport'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.departure_airport != null) {
      data['departure_airport'] = this.departure_airport!.toJson();
    }
    if (this.arrival_airport != null) {
      data['arrival_airport'] = this.arrival_airport!.toJson();
    }
    return data;
  }
}
