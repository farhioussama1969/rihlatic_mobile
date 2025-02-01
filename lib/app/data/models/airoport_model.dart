import 'package:rihlatic/app/data/models/country_model.dart';

class AirportModel {
  int? id;
  String? name;
  String? city;
  String? state;
  CountryModel? country;
  String? iata;
  String? icao;
  String? lat;
  String? lon;
  String? tz;

  AirportModel(
      {this.id,
      this.name,
      this.city,
      this.state,
      this.country,
      this.iata,
      this.icao,
      this.lat,
      this.lon,
      this.tz});

  AirportModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    state = json['state'];
    country = json['country'] != null
        ? CountryModel.fromJson(json['country'])
        : null;
    iata = json['iata'];
    icao = json['icao'];
    lat = json['lat'];
    lon = json['lon'];
    tz = json['tz'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['city'] = city;
    data['state'] = state;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    data['iata'] = iata;
    data['icao'] = icao;
    data['lat'] = lat;
    data['lon'] = lon;
    data['tz'] = tz;
    return data;
  }
}
