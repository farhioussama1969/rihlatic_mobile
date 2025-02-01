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
        ? AgencyModel.fromJson(json['agency'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['email'] = email;
    data['phone'] = phone;
    data['avatar'] = avatar;
    data['address'] = address;
    data['country_id'] = countryId;
    data['role_id'] = roleId;
    data['status'] = status;
    data['birthday'] = birthday;
    data['nationality'] = nationality;
    data['passport_nbr'] = passportNbr;
    data['passport_expire_at'] = passportExpireAt;
    data['sexe'] = sexe;
    data['lang'] = lang;
    data['last_login'] = lastLogin;
    data['two_factor_country_code'] = twoFactorCountryCode;
    data['two_factor_phone'] = twoFactorPhone;
    data['two_factor_options'] = twoFactorOptions;
    data['email_verified_at'] = emailVerifiedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (agency != null) {
      data['agency'] = agency!.toJson();
    }
    return data;
  }
}
