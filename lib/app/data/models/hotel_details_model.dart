import 'package:rihlatic/app/data/models/InfosModel.dart';
import 'package:rihlatic/app/data/models/contact_model.dart';
import 'package:rihlatic/app/data/models/localisation_model.dart';
import 'package:rihlatic/app/data/models/reviews_model.dart';

class HotelDetailsModel {
  String? supplier;
  InfosModel? infos;
  ContactModel? contact;
  List<String>? facilities;
  String? featureImage;
  List<String>? images;
  ReviewsModel? reviews;
  LocalisationModel? localisation;
  String? supplements;
  String? reduction;

  HotelDetailsModel({
    this.supplier,
    this.infos,
    this.contact,
    this.facilities,
    this.featureImage,
    this.images,
    this.reviews,
    this.localisation,
    this.supplements,
    this.reduction,
  });

  HotelDetailsModel.fromJson(Map<String, dynamic> json) {
    supplier = json['supplier'];
    infos = json['infos'] != null ? InfosModel.fromJson(json['infos']) : null;
    contact =
        json['contact'] != null ? ContactModel.fromJson(json['contact']) : null;
    facilities =
        (json['facilities'] as List?)?.map((e) => e as String).toList();
    featureImage = json['feature_image'];
    images = (json['images'] as List?)?.map((e) => e as String).toList();
    reviews =
        json['reviews'] != null ? ReviewsModel.fromJson(json['reviews']) : null;
    localisation = json['localisation'] != null
        ? LocalisationModel.fromJson(json['localisation'])
        : null;
    supplements = json['supplements'];
    reduction = json['reduction'];
  }

  Map<String, dynamic> toJson() {
    return {
      'supplier': supplier,
      'infos': infos?.toJson(),
      'contact': contact?.toJson(),
      'facilities': facilities,
      'feature_image': featureImage,
      'images': images,
      'reviews': reviews?.toJson(),
      'localisation': localisation?.toJson(),
      'supplements': supplements,
      'reduction': reduction,
    };
  }
}
