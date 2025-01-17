class ReviewsModel {
  String? note;
  String? number;

  ReviewsModel({this.note, this.number});

  ReviewsModel.fromJson(Map<String, dynamic> json) {
    note = json['note'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() => {
        'note': note,
        'number': number,
      };
}
