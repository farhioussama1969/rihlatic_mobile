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

  OrganizedTripModel(
      {this.id,
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
      this.departuresCount});

  OrganizedTripModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    status = json['status'];
    category = json['category'];
    if (json['destinations'] != null) {
      destinations = <DestinationModel>[];
      json['destinations'].forEach((v) {
        destinations!.add(new DestinationModel.fromJson(v));
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
        departures!.add(new DepartureModel.fromJson(v));
      });
    }
    departuresCount = json['departures_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['status'] = this.status;
    data['category'] = this.category;
    if (this.destinations != null) {
      data['destinations'] = this.destinations!.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    data['note'] = this.note;
    data['url_featured_image'] = this.urlFeaturedImage;
    data['featured_image'] = this.featuredImage;
    data['shared_with_all'] = this.sharedWithAll;
    if (this.departures != null) {
      data['departures'] = this.departures!.map((v) => v.toJson()).toList();
    }
    data['departures_count'] = this.departuresCount;
    return data;
  }
}
