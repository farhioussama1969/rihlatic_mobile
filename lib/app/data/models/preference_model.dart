class PreferencesModel {
  int? id;
  String? evisaMarginType;
  String? evisaProfitMargin;
  String? flightMarginType;
  String? flightProfitMargin;
  String? packageMarginType;
  String? packageProfitMargin;
  String? hotelMarginType;
  String? hotelProfitMargin;
  String? amadeusFlightMarginType;
  String? amadeusFlightProfitMargin;

  PreferencesModel(
      {this.id,
      this.evisaMarginType,
      this.evisaProfitMargin,
      this.flightMarginType,
      this.flightProfitMargin,
      this.packageMarginType,
      this.packageProfitMargin,
      this.hotelMarginType,
      this.hotelProfitMargin,
      this.amadeusFlightMarginType,
      this.amadeusFlightProfitMargin});

  PreferencesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    evisaMarginType = json['evisa_margin_type'];
    evisaProfitMargin = json['evisa_profit_margin'];
    flightMarginType = json['flight_margin_type'];
    flightProfitMargin = json['flight_profit_margin'];
    packageMarginType = json['package_margin_type'];
    packageProfitMargin = json['package_profit_margin'];
    hotelMarginType = json['hotel_margin_type'];
    hotelProfitMargin = json['hotel_profit_margin'];
    amadeusFlightMarginType = json['amadeus_flight_margin_type'];
    amadeusFlightProfitMargin = json['amadeus_flight_profit_margin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['evisa_margin_type'] = evisaMarginType;
    data['evisa_profit_margin'] = evisaProfitMargin;
    data['flight_margin_type'] = flightMarginType;
    data['flight_profit_margin'] = flightProfitMargin;
    data['package_margin_type'] = packageMarginType;
    data['package_profit_margin'] = packageProfitMargin;
    data['hotel_margin_type'] = hotelMarginType;
    data['hotel_profit_margin'] = hotelProfitMargin;
    data['amadeus_flight_margin_type'] = amadeusFlightMarginType;
    data['amadeus_flight_profit_margin'] = amadeusFlightProfitMargin;
    return data;
  }
}
