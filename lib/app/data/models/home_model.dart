import 'package:rihlatic/app/data/models/flight_model.dart';

import 'destination_model.dart';
import 'organized_trip_model.dart';

class HomeModel {
  List<DestinationModel>? discoverAlgeria;
  List<DestinationModel>? favoriteDestinations;
  List<OrganizedTripModel>? organzidTrip;
  List<DestinationModel>? popularFromAlgiers;
  List<FlightModel>? popularFlights;

  HomeModel(
      {this.discoverAlgeria,
      this.favoriteDestinations,
      this.organzidTrip,
      this.popularFromAlgiers,
      this.popularFlights});

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['discoverAlgeria'] != null) {
      discoverAlgeria = <DestinationModel>[];
      json['discoverAlgeria'].forEach((v) {
        discoverAlgeria!.add(DestinationModel.fromJson(v));
      });
    }
    if (json['favoriteDestinations'] != null) {
      favoriteDestinations = <DestinationModel>[];
      json['favoriteDestinations'].forEach((v) {
        favoriteDestinations!.add(DestinationModel.fromJson(v));
      });
    }
    if (json['organzidTrip'] != null) {
      organzidTrip = <OrganizedTripModel>[];
      json['organzidTrip'].forEach((v) {
        organzidTrip!.add(OrganizedTripModel.fromJson(v));
      });
    }
    if (json['popularFromAlgiers'] != null) {
      popularFromAlgiers = <DestinationModel>[];
      json['popularFromAlgiers'].forEach((v) {
        popularFromAlgiers!.add(DestinationModel.fromJson(v));
      });
    }
    if (json['popularFlights'] != null) {
      popularFlights = <FlightModel>[];
      json['popularFlights'].forEach((v) {
        popularFlights!.add(FlightModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (discoverAlgeria != null) {
      data['discoverAlgeria'] =
          discoverAlgeria!.map((v) => v.toJson()).toList();
    }
    if (favoriteDestinations != null) {
      data['favoriteDestinations'] =
          favoriteDestinations!.map((v) => v.toJson()).toList();
    }
    if (organzidTrip != null) {
      data['organzidTrip'] = organzidTrip!.map((v) => v.toJson()).toList();
    }
    if (popularFromAlgiers != null) {
      data['popularFromAlgiers'] =
          popularFromAlgiers!.map((v) => v.toJson()).toList();
    }
    if (popularFlights != null) {
      data['popularFlights'] =
          popularFlights!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
