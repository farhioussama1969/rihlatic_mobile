import 'package:rihlatic/app/data/models/country_model.dart';

class DestinationModel {
  int? id;
  String? name;
  String? description;
  CountryModel? country;
  String? image;
  int? departuresCount;
  int? totalPackages;

  DestinationModel(
      {this.id,
      this.name,
      this.description,
      this.country,
      this.image,
      this.departuresCount,
      this.totalPackages});

  DestinationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    country = json['country'] != null
        ? new CountryModel.fromJson(json['country'])
        : null;
    image = json['image'];
    departuresCount = json['departures_count'];
    totalPackages = json['total_packages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
    data['image'] = this.image;
    data['departures_count'] = this.departuresCount;
    data['total_packages'] = this.totalPackages;
    return data;
  }
}
