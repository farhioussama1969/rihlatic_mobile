import 'package:rihlatic/app/data/models/agency_model.dart';

class UserModel {
  int? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? avatar;
  String? address;
  int? countryId;
  int? roleId;
  String? status;
  String? birthday;
  String? nationality;
  String? passportNbr;
  String? passportExpireAt;
  String? sexe;
  String? lang;
  String? lastLogin;
  int? twoFactorCountryCode;
  String? twoFactorPhone;
  String? twoFactorOptions;
  String? emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  AgencyModel? agency;

  UserModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.username,
      this.email,
      this.phone,
      this.avatar,
      this.address,
      this.countryId,
      this.roleId,
      this.status,
      this.birthday,
      this.nationality,
      this.passportNbr,
      this.passportExpireAt,
      this.sexe,
      this.lang,
      this.lastLogin,
      this.twoFactorCountryCode,
      this.twoFactorPhone,
      this.twoFactorOptions,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.agency});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    address = json['address'];
    countryId = json['country_id'];
    roleId = json['role_id'];
    status = json['status'];
    birthday = json['birthday'];
    nationality = json['nationality'];
    passportNbr = json['passport_nbr'];
    passportExpireAt = json['passport_expire_at'];
    sexe = json['sexe'];
    lang = json['lang'];
    lastLogin = json['last_login'];
    twoFactorCountryCode = json['two_factor_country_code'];
    twoFactorPhone = json['two_factor_phone'];
    twoFactorOptions = json['two_factor_options'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    agency = json['agency'] != null
        ? new AgencyModel.fromJson(json['agency'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['avatar'] = this.avatar;
    data['address'] = this.address;
    data['country_id'] = this.countryId;
    data['role_id'] = this.roleId;
    data['status'] = this.status;
    data['birthday'] = this.birthday;
    data['nationality'] = this.nationality;
    data['passport_nbr'] = this.passportNbr;
    data['passport_expire_at'] = this.passportExpireAt;
    data['sexe'] = this.sexe;
    data['lang'] = this.lang;
    data['last_login'] = this.lastLogin;
    data['two_factor_country_code'] = this.twoFactorCountryCode;
    data['two_factor_phone'] = this.twoFactorPhone;
    data['two_factor_options'] = this.twoFactorOptions;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.agency != null) {
      data['agency'] = this.agency!.toJson();
    }
    return data;
  }
}
