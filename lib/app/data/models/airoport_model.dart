class AirportModel {
  int? id;
  String? name;
  String? city;
  String? state;
  Country? country;
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
    country =
        json['country'] != null ? new Country.fromJson(json['country']) : null;
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

class Country {
  int? id;
  String? name;
  String? fullName;
  String? capital;
  String? citizenship;
  int? countryCode;
  String? currency;
  String? currencyCode;
  String? currencySubUnit;
  String? currencySymbol;
  String? iso31662;
  String? iso31663;
  int? regionCode;
  int? subRegionCode;
  bool? eea;
  int? callingCode;
  String? flag;

  Country(
      {this.id,
      this.name,
      this.fullName,
      this.capital,
      this.citizenship,
      this.countryCode,
      this.currency,
      this.currencyCode,
      this.currencySubUnit,
      this.currencySymbol,
      this.iso31662,
      this.iso31663,
      this.regionCode,
      this.subRegionCode,
      this.eea,
      this.callingCode,
      this.flag});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    fullName = json['full_name'];
    capital = json['capital'];
    citizenship = json['citizenship'];
    countryCode = json['country_code'];
    currency = json['currency'];
    currencyCode = json['currency_code'];
    currencySubUnit = json['currency_sub_unit'];
    currencySymbol = json['currency_symbol'];
    iso31662 = json['iso_3166_2'];
    iso31663 = json['iso_3166_3'];
    regionCode = json['region_code'];
    subRegionCode = json['sub_region_code'];
    eea = json['eea'];
    callingCode = json['calling_code'];
    flag = json['flag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['full_name'] = this.fullName;
    data['capital'] = this.capital;
    data['citizenship'] = this.citizenship;
    data['country_code'] = this.countryCode;
    data['currency'] = this.currency;
    data['currency_code'] = this.currencyCode;
    data['currency_sub_unit'] = this.currencySubUnit;
    data['currency_symbol'] = this.currencySymbol;
    data['iso_3166_2'] = this.iso31662;
    data['iso_3166_3'] = this.iso31663;
    data['region_code'] = this.regionCode;
    data['sub_region_code'] = this.subRegionCode;
    data['eea'] = this.eea;
    data['calling_code'] = this.callingCode;
    data['flag'] = this.flag;
    return data;
  }
}
