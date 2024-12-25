import 'package:rihlatic/app/data/models/localisation_model.dart';
import 'package:rihlatic/app/data/models/promotion_model.dart';

class HotelModel {
  String? supplier;
  String? supplierLogo;
  String? number;
  String? ref;
  String? featureImage;
  int? rate;
  int? highestRate;
  String? name;
  String? address;
  int? rating;
  int? reviews;
  LocalisationModel? localisation;
  PromotionModel? promotion;

  HotelModel(
      {this.supplier,
      this.supplierLogo,
      this.number,
      this.ref,
      this.featureImage,
      this.rate,
      this.highestRate,
      this.name,
      this.address,
      this.rating,
      this.reviews,
      this.localisation,
      this.promotion});

  HotelModel.fromJson(Map<String, dynamic> json) {
    supplier = json['supplier'];
    supplierLogo = json['supplier_logo'];
    number = json['number'];
    ref = json['ref'];
    featureImage = json['feature_image'];
    rate = json['rate'];
    highestRate = json['highestRate'];
    name = json['name'];
    address = json['address'];
    rating = json['rating'];
    reviews = json['reviews'];
    localisation = json['localisation'] != null
        ? new LocalisationModel.fromJson(json['localisation'])
        : null;
    promotion = json['promotion'] != null
        ? new PromotionModel.fromJson(json['promotion'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['supplier'] = this.supplier;
    data['supplier_logo'] = this.supplierLogo;
    data['number'] = this.number;
    data['ref'] = this.ref;
    data['feature_image'] = this.featureImage;
    data['rate'] = this.rate;
    data['highestRate'] = this.highestRate;
    data['name'] = this.name;
    data['address'] = this.address;
    data['rating'] = this.rating;
    data['reviews'] = this.reviews;
    if (this.localisation != null) {
      data['localisation'] = this.localisation!.toJson();
    }
    if (this.promotion != null) {
      data['promotion'] = this.promotion!.toJson();
    }
    return data;
  }
}
