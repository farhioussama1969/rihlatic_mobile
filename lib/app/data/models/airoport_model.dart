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
        ? new CountryModel.fromJson(json['country'])
        : null;
    iata = json['iata'];
    icao = json['icao'];
    lat = json['lat'];
    lon = json['lon'];
    tz = json['tz'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['city'] = this.city;
    data['state'] = this.state;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['iata'] = this.iata;
    data['icao'] = this.icao;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['tz'] = this.tz;
    return data;
  }
}
