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
  List<Room>? rooms;
  ReviewsModel? reviews;
  LocalisationModel? localisation;
  String? supplements;
  String? reduction;
  List<RoomData>? roomsData;

  HotelDetailsModel({
    this.supplier,
    this.infos,
    this.contact,
    this.facilities,
    this.featureImage,
    this.images,
    this.rooms,
    this.reviews,
    this.localisation,
    this.supplements,
    this.reduction,
    this.roomsData,
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
    rooms = (json['rooms'] as List?)
        ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
        .toList();
    reviews =
        json['reviews'] != null ? ReviewsModel.fromJson(json['reviews']) : null;
    localisation = json['localisation'] != null
        ? LocalisationModel.fromJson(json['localisation'])
        : null;
    supplements = json['supplements'];
    reduction = json['reduction'];
    roomsData = (json['roomsdata'] as List?)
        ?.map((e) => RoomData.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'supplier': supplier,
      'infos': infos?.toJson(),
      'contact': contact?.toJson(),
      'facilities': facilities,
      'feature_image': featureImage,
      'images': images,
      'rooms': rooms?.map((e) => e.toJson()).toList(),
      'reviews': reviews?.toJson(),
      'localisation': localisation?.toJson(),
      'supplements': supplements,
      'reduction': reduction,
      'roomsdata': roomsData?.map((e) => e.toJson()).toList(),
    };
  }
}

class RoomData {
  String? name;
}

class Room {
  String? name;
}
