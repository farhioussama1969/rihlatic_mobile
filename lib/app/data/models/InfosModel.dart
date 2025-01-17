class InfosModel {
  String? destination;
  String? city;
  String? ref;
  String? name;
  String? description;
  String? rating;
  String? address;
  String? summary;

  InfosModel({
    this.destination,
    this.city,
    this.ref,
    this.name,
    this.description,
    this.rating,
    this.address,
    this.summary,
  });

  InfosModel.fromJson(Map<String, dynamic> json) {
    destination = json['destination'];
    city = json['city'];
    ref = json['ref'];
    name = json['name'];
    description = json['description'];
    rating = json['rating'];
    address = json['address'];
    summary = json['summary'];
  }

  Map<String, dynamic> toJson() => {
        'destination': destination,
        'city': city,
        'ref': ref,
        'name': name,
        'description': description,
        'rating': rating,
        'address': address,
        'summary': summary,
      };
}
