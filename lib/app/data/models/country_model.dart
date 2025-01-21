class CountryModel {
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

  CountryModel(
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

  CountryModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['full_name'] = fullName;
    data['capital'] = capital;
    data['citizenship'] = citizenship;
    data['country_code'] = countryCode;
    data['currency'] = currency;
    data['currency_code'] = currencyCode;
    data['currency_sub_unit'] = currencySubUnit;
    data['currency_symbol'] = currencySymbol;
    data['iso_3166_2'] = iso31662;
    data['iso_3166_3'] = iso31663;
    data['region_code'] = regionCode;
    data['sub_region_code'] = subRegionCode;
    data['eea'] = eea;
    data['calling_code'] = callingCode;
    data['flag'] = flag;
    return data;
  }
}
