import 'package:rihlatic/app/data/models/airoport_model.dart';

class FlightModel {
  AirportModel? departure;
  AirportModel? arrival;

  FlightModel({this.departure, this.arrival});

  FlightModel.fromJson(Map<String, dynamic> json) {
    departure = json['departure'] != null
        ? new AirportModel.fromJson(json['departure'])
        : null;
    arrival = json['arrival'] != null
        ? new AirportModel.fromJson(json['arrival'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.departure != null) {
      data['departure'] = this.departure!.toJson();
    }
    if (this.arrival != null) {
      data['arrival'] = this.arrival!.toJson();
    }
    return data;
  }
}
