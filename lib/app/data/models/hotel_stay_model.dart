class HotelStayModel {
  String? name;
  String? typeMeals;
  String? rate;

  HotelStayModel({this.name, this.typeMeals, this.rate});

  HotelStayModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    typeMeals = json['type_meals'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['type_meals'] = typeMeals;
    data['rate'] = rate;
    return data;
  }
}
