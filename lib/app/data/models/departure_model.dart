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
        hotelStay!.add(HotelStayModel.fromJson(v));
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['departure_date'] = departureDate;
    data['return_date'] = returnDate;
    data['number_seats'] = numberSeats;
    data['means_transport'] = meansTransport;
    data['itinerary'] = itinerary;
    data['visa'] = visa;
    data['vol'] = vol;
    data['hotel'] = hotel;
    data['transfer'] = transfer;
    data['excursion'] = excursion;
    data['cruise'] = cruise;
    if (hotelStay != null) {
      data['hotel_stay'] = hotelStay!.map((v) => v.toJson()).toList();
    }
    data['price_ini'] = priceIni;
    data['promotion'] = promotion;
    data['code_promo'] = codePromo;
    data['fee_promo'] = feePromo;
    data['includes'] = includes;
    data['excludes'] = excludes;
    data['booked_seats'] = bookedSeats;
    data['remainder_seats'] = remainderSeats;
    data['status'] = status;
    data['total_days'] = totalDays;
    data['rooming_list'] = roomingList;
    return data;
  }
}
