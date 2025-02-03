import 'package:rihlatic/app/data/models/omra_room_model.dart';

class OmraBookingRequest {
  int? omraDepartureId;
  List<OmraRoomModel>? rooms;

  OmraBookingRequest({this.omraDepartureId, this.rooms});

  OmraBookingRequest.fromJson(Map<String, dynamic> json) {
    omraDepartureId = json['omra_departure_id'];
    if (json['rooms'] != null) {
      rooms = <OmraRoomModel>[];
      json['rooms'].forEach((v) {
        rooms!.add(OmraRoomModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['omra_departure_id'] = omraDepartureId;
    if (rooms != null) {
      data['rooms'] = rooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
