class LocalisationModel {
  int? longitude;
  int? latitude;

  LocalisationModel({this.longitude, this.latitude});

  LocalisationModel.fromJson(Map<String, dynamic> json) {
    longitude = json['longitude'];
    latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['longitude'] = this.longitude;
    data['latitude'] = this.latitude;
    return data;
  }
}
