class RoomModel {
  int? id;
  String? type;
  String? name;
  String? description;
  int? capacityAdult;
  int? capacityChild;
  int? capacityBebe;

  RoomModel(
      {this.id,
      this.type,
      this.name,
      this.description,
      this.capacityAdult,
      this.capacityChild,
      this.capacityBebe});

  RoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    capacityAdult = json['capacity_adult'];
    capacityChild = json['capacity_child'];
    capacityBebe = json['capacity_bebe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['name'] = this.name;
    data['description'] = this.description;
    data['capacity_adult'] = this.capacityAdult;
    data['capacity_child'] = this.capacityChild;
    data['capacity_bebe'] = this.capacityBebe;
    return data;
  }
}
