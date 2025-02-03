class PassengerModel {
  List<Adults>? adults;
  List<ChildrenWithoutBed>? childrenWithoutBed;

  PassengerModel({this.adults, this.childrenWithoutBed});

  PassengerModel.fromJson(Map<String, dynamic> json) {
    if (json['adults'] != null) {
      adults = <Adults>[];
      json['adults'].forEach((v) {
        adults!.add(new Adults.fromJson(v));
      });
    }
    if (json['children_without_bed'] != null) {
      childrenWithoutBed = <ChildrenWithoutBed>[];
      json['children_without_bed'].forEach((v) {
        childrenWithoutBed!.add(new ChildrenWithoutBed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.adults != null) {
      data['adults'] = this.adults!.map((v) => v.toJson()).toList();
    }
    if (this.childrenWithoutBed != null) {
      data['children_without_bed'] =
          this.childrenWithoutBed!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Adults {
  String? email;
  String? phone;
  String? firstName;
  String? lastName;
  String? sex;
  String? passportNbr;
  String? passportExpireAt;
  String? passportScan;
  String? birthDate;

  Adults(
      {this.email,
      this.phone,
      this.firstName,
      this.lastName,
      this.sex,
      this.passportNbr,
      this.passportExpireAt,
      this.passportScan,
      this.birthDate});

  Adults.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    sex = json['sex'];
    passportNbr = json['passport_nbr'];
    passportExpireAt = json['passport_expire_at'];
    passportScan = json['passport_scan'];
    birthDate = json['birth_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['sex'] = this.sex;
    data['passport_nbr'] = this.passportNbr;
    data['passport_expire_at'] = this.passportExpireAt;
    data['passport_scan'] = this.passportScan;
    data['birth_date'] = this.birthDate;
    return data;
  }
}

class ChildrenWithoutBed {
  String? email;
  String? phone;
  String? firstName;
  String? lastName;
  String? sex;
  String? passportNbr;
  String? passportExpireAt;
  String? passportScan;
  String? birthDate;

  ChildrenWithoutBed(
      {this.email,
      this.phone,
      this.firstName,
      this.lastName,
      this.sex,
      this.passportNbr,
      this.passportExpireAt,
      this.passportScan,
      this.birthDate});

  ChildrenWithoutBed.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    sex = json['sex'];
    passportNbr = json['passport_nbr'];
    passportExpireAt = json['passport_expire_at'];
    passportScan = json['passport_scan'];
    birthDate = json['birth_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['sex'] = this.sex;
    data['passport_nbr'] = this.passportNbr;
    data['passport_expire_at'] = this.passportExpireAt;
    data['passport_scan'] = this.passportScan;
    data['birth_date'] = this.birthDate;
    return data;
  }
}
