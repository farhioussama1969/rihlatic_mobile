import 'package:rihlatic/app/data/models/departure_model.dart';
import 'package:rihlatic/app/data/models/destination_model.dart';

class OrganizedTripModel {
  int? id;
  String? name;
  String? type;
  String? status;
  String? category;
  List<DestinationModel>? destinations;
  String? description;
  String? note;
  String? urlFeaturedImage;
  String? featuredImage;
  bool? sharedWithAll;
  List<DepartureModel>? departures;
  int? departuresCount;
  List<GalleryItem>? gallery; // Add this field

  OrganizedTripModel({
    this.id,
    this.name,
    this.type,
    this.status,
    this.category,
    this.destinations,
    this.description,
    this.note,
    this.urlFeaturedImage,
    this.featuredImage,
    this.sharedWithAll,
    this.departures,
    this.departuresCount,
    this.gallery, // Add this field
  });

  OrganizedTripModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    category = json['category'];
    if (json['destinations'] != null) {
      destinations = <DestinationModel>[];
      json['destinations'].forEach((v) {
        destinations!.add(DestinationModel.fromJson(v));
      });
    }
    description = json['description'];
    note = json['note'];
    urlFeaturedImage = json['url_featured_image'];
    featuredImage = json['featured_image'];
    sharedWithAll = json['shared_with_all'];
    if (json['departures'] != null) {
      departures = <DepartureModel>[];
      json['departures'].forEach((v) {
        departures!.add(DepartureModel.fromJson(v));
      });
    }
    departuresCount = json['departures_count'];
    if (json['gallery'] != null) {
      gallery = <GalleryItem>[];
      json['gallery'].forEach((v) {
        gallery!.add(GalleryItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['status'] = status;
    data['category'] = category;
    if (destinations != null) {
      data['destinations'] = destinations!.map((v) => v.toJson()).toList();
    }
    data['description'] = description;
    data['note'] = note;
    data['url_featured_image'] = urlFeaturedImage;
    data['featured_image'] = featuredImage;
    data['shared_with_all'] = sharedWithAll;
    if (departures != null) {
      data['departures'] = departures!.map((v) => v.toJson()).toList();
    }
    data['departures_count'] = departuresCount;
    if (gallery != null) {
      data['gallery'] = gallery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

// Define the GalleryItem model
class GalleryItem {
  int? uid;
  String? url;
  String? status;
  String? name;

  GalleryItem({this.uid, this.url, this.status, this.name});

  factory GalleryItem.fromJson(Map<String, dynamic> json) {
    return GalleryItem(
      uid: json['uid'],
      url: json['url'],
      status: json['status'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['uid'] = uid;
    data['url'] = url;
    data['status'] = status;
    data['name'] = name;
    return data;
  }
}
