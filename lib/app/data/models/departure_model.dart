import 'hotel_stay_model.dart';

class DepartureModel {
  int? id;
  String? departureDate;
  String? returnDate;
  int? numberSeats;
  List<String>? meansTransport;
  List<String>? itinerary;
  bool? visa;
  bool? vol;
  bool? hotel;
  bool? transfer;
  bool? excursion;
  bool? cruise;
  List<HotelStayModel>? hotelStay;
  String? priceIni;
  int? promotion;
  String? codePromo;
  String? feePromo;
  List<String>? includes;
  List<String>? excludes;
  int? bookedSeats;
  int? remainderSeats;
  String? status;
  int? totalDays;
  String? roomingList;

  DepartureModel(
      {this.id,
      this.departureDate,
      this.returnDate,
      this.numberSeats,
      this.meansTransport,
      this.itinerary,
      this.visa,
      this.vol,
      this.hotel,
      this.transfer,
      this.excursion,
      this.cruise,
      this.hotelStay,
      this.priceIni,
      this.promotion,
      this.codePromo,
      this.feePromo,
      this.includes,
      this.excludes,
      this.bookedSeats,
      this.remainderSeats,
      this.status,
      this.totalDays,
      this.roomingList});

  DepartureModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    departureDate = json['departure_date'];
    returnDate = json['return_date'];
    numberSeats = json['number_seats'];
    meansTransport = json['means_transport'].cast<String>();
    itinerary = json['itinerary'].cast<String>();
    visa = json['visa'];
    vol = json['vol'];
    hotel = json['hotel'];
    transfer = json['transfer'];
    excursion = json['excursion'];
    cruise = json['cruise'];
    if (json['hotel_stay'] != null) {
      hotelStay = <HotelStayModel>[];
      json['hotel_stay'].forEach((v) {
        hotelStay!.add(new HotelStayModel.fromJson(v));
      });
    }
    priceIni = json['price_ini'];
    promotion = json['promotion'];
    codePromo = json['code_promo'];
    feePromo = json['fee_promo'];
    includes = json['includes'].cast<String>();
    excludes = json['excludes'].cast<String>();
    bookedSeats = json['booked_seats'];
    remainderSeats = json['remainder_seats'];
    status = json['status'];
    totalDays = json['total_days'];
    roomingList = json['rooming_list'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['departure_date'] = this.departureDate;
    data['return_date'] = this.returnDate;
    data['number_seats'] = this.numberSeats;
    data['means_transport'] = this.meansTransport;
    data['itinerary'] = this.itinerary;
    data['visa'] = this.visa;
    data['vol'] = this.vol;
    data['hotel'] = this.hotel;
    data['transfer'] = this.transfer;
    data['excursion'] = this.excursion;
    data['cruise'] = this.cruise;
    if (this.hotelStay != null) {
      data['hotel_stay'] = this.hotelStay!.map((v) => v.toJson()).toList();
    }
    data['price_ini'] = this.priceIni;
    data['promotion'] = this.promotion;
    data['code_promo'] = this.codePromo;
    data['fee_promo'] = this.feePromo;
    data['includes'] = this.includes;
    data['excludes'] = this.excludes;
    data['booked_seats'] = this.bookedSeats;
    data['remainder_seats'] = this.remainderSeats;
    data['status'] = this.status;
    data['total_days'] = this.totalDays;
    data['rooming_list'] = this.roomingList;
    return data;
  }
}
