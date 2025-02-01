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
        ? CountryModel.fromJson(json['country'])
        : null;
    image = json['image'];
    departuresCount = json['departures_count'];
    totalPackages = json['total_packages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    if (country != null) {
      data['country'] = country!.toJson();
    }
    data['image'] = image;
    data['departures_count'] = departuresCount;
    data['total_packages'] = totalPackages;
    return data;
  }
}
