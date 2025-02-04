import 'package:rihlatic/app/data/models/passanger_model.dart';

class OmraRoomModel {
  int? roomId;
  String? reservationType;
  PassengerModel? passengers;

  OmraRoomModel({this.roomId, this.reservationType, this.passengers});

  OmraRoomModel.fromJson(Map<String, dynamic> json) {
    roomId = json['room_id'];
    reservationType = json['reservation_type'];
    passengers = json['passengers'] != null
        ? new PassengerModel.fromJson(json['passengers'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['room_id'] = this.roomId;
    data['reservation_type'] = this.reservationType;
    if (this.passengers != null) {
      data['passengers'] = this.passengers!.toJson();
    }
    return data;
  }
}
