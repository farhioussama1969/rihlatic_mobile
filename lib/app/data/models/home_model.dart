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
        discoverAlgeria!.add(new DestinationModel.fromJson(v));
      });
    }
    if (json['favoriteDestinations'] != null) {
      favoriteDestinations = <DestinationModel>[];
      json['favoriteDestinations'].forEach((v) {
        favoriteDestinations!.add(new DestinationModel.fromJson(v));
      });
    }
    if (json['organzidTrip'] != null) {
      organzidTrip = <OrganizedTripModel>[];
      json['organzidTrip'].forEach((v) {
        organzidTrip!.add(new OrganizedTripModel.fromJson(v));
      });
    }
    if (json['popularFromAlgiers'] != null) {
      popularFromAlgiers = <DestinationModel>[];
      json['popularFromAlgiers'].forEach((v) {
        popularFromAlgiers!.add(new DestinationModel.fromJson(v));
      });
    }
    if (json['popularFlights'] != null) {
      popularFlights = <FlightModel>[];
      json['popularFlights'].forEach((v) {
        popularFlights!.add(new FlightModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.discoverAlgeria != null) {
      data['discoverAlgeria'] =
          this.discoverAlgeria!.map((v) => v.toJson()).toList();
    }
    if (this.favoriteDestinations != null) {
      data['favoriteDestinations'] =
          this.favoriteDestinations!.map((v) => v.toJson()).toList();
    }
    if (this.organzidTrip != null) {
      data['organzidTrip'] = this.organzidTrip!.map((v) => v.toJson()).toList();
    }
    if (this.popularFromAlgiers != null) {
      data['popularFromAlgiers'] =
          this.popularFromAlgiers!.map((v) => v.toJson()).toList();
    }
    if (this.popularFlights != null) {
      data['popularFlights'] =
          this.popularFlights!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
