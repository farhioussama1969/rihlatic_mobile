class PromotionModel {
  String? name;
  String? date;

  PromotionModel({this.name, this.date});

  PromotionModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date'] = this.date;
    return data;
  }
}
