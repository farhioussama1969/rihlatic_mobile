import 'package:rihlatic/app/data/models/preference_model.dart';

class AgencyModel {
  int? id;
  String? name;
  String? address;
  String? city;
  String? postcode;
  String? phone;
  String? mobile;
  String? email;
  String? fax;
  String? taxReg;
  String? commerceReg;
  String? status;
  String? logo;
  String? facebook;
  String? twitter;
  String? instagram;
  String? linkedin;
  String? oldBalance;
  String? balance;
  String? negativeBalance;
  String? minNegativeBalance;
  String? evisaPriceIncrease;
  String? lastNameRes;
  String? firstNameRes;
  String? resMobile;
  String? resEmail;
  PreferencesModel? preferences;
  String? signedContract;
  String? agreementFile;
  int? key;
  String? label;
  int? value;

  AgencyModel(
      {this.id,
      this.name,
      this.address,
      this.city,
      this.postcode,
      this.phone,
      this.mobile,
      this.email,
      this.fax,
      this.taxReg,
      this.commerceReg,
      this.status,
      this.logo,
      this.facebook,
      this.twitter,
      this.instagram,
      this.linkedin,
      this.oldBalance,
      this.balance,
      this.negativeBalance,
      this.minNegativeBalance,
      this.evisaPriceIncrease,
      this.lastNameRes,
      this.firstNameRes,
      this.resMobile,
      this.resEmail,
      this.preferences,
      this.signedContract,
      this.agreementFile,
      this.key,
      this.label,
      this.value});

  AgencyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    city = json['city'];
    postcode = json['postcode'];
    phone = json['phone'];
    mobile = json['mobile'];
    email = json['email'];
    fax = json['fax'];
    taxReg = json['tax_reg'];
    commerceReg = json['commerce_reg'];
    status = json['status'];
    logo = json['logo'];
    facebook = json['facebook'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    linkedin = json['linkedin'];
    oldBalance = json['old_balance'];
    balance = json['balance'];
    negativeBalance = json['negative_balance'];
    minNegativeBalance = json['min_negative_balance'];
    evisaPriceIncrease = json['evisa_price_increase'];
    lastNameRes = json['last_name_res'];
    firstNameRes = json['first_name_res'];
    resMobile = json['res_mobile'];
    resEmail = json['res_email'];
    preferences = json['preferences'] != null
        ? new PreferencesModel.fromJson(json['preferences'])
        : null;
    signedContract = json['signed_contract'];
    agreementFile = json['agreement_file'];
    key = json['key'];
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['city'] = this.city;
    data['postcode'] = this.postcode;
    data['phone'] = this.phone;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['fax'] = this.fax;
    data['tax_reg'] = this.taxReg;
    data['commerce_reg'] = this.commerceReg;
    data['status'] = this.status;
    data['logo'] = this.logo;
    data['facebook'] = this.facebook;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['linkedin'] = this.linkedin;
    data['old_balance'] = this.oldBalance;
    data['balance'] = this.balance;
    data['negative_balance'] = this.negativeBalance;
    data['min_negative_balance'] = this.minNegativeBalance;
    data['evisa_price_increase'] = this.evisaPriceIncrease;
    data['last_name_res'] = this.lastNameRes;
    data['first_name_res'] = this.firstNameRes;
    data['res_mobile'] = this.resMobile;
    data['res_email'] = this.resEmail;
    if (this.preferences != null) {
      data['preferences'] = this.preferences!.toJson();
    }
    data['signed_contract'] = this.signedContract;
    data['agreement_file'] = this.agreementFile;
    data['key'] = this.key;
    data['label'] = this.label;
    data['value'] = this.value;
    return data;
  }
}
