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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['type_meals'] = this.typeMeals;
    data['rate'] = this.rate;
    return data;
  }
}
