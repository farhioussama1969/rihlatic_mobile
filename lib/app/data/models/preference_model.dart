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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['evisa_margin_type'] = this.evisaMarginType;
    data['evisa_profit_margin'] = this.evisaProfitMargin;
    data['flight_margin_type'] = this.flightMarginType;
    data['flight_profit_margin'] = this.flightProfitMargin;
    data['package_margin_type'] = this.packageMarginType;
    data['package_profit_margin'] = this.packageProfitMargin;
    data['hotel_margin_type'] = this.hotelMarginType;
    data['hotel_profit_margin'] = this.hotelProfitMargin;
    data['amadeus_flight_margin_type'] = this.amadeusFlightMarginType;
    data['amadeus_flight_profit_margin'] = this.amadeusFlightProfitMargin;
    return data;
  }
}
