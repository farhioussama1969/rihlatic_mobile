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
        ? PreferencesModel.fromJson(json['preferences'])
        : null;
    signedContract = json['signed_contract'];
    agreementFile = json['agreement_file'];
    key = json['key'];
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['address'] = address;
    data['city'] = city;
    data['postcode'] = postcode;
    data['phone'] = phone;
    data['mobile'] = mobile;
    data['email'] = email;
    data['fax'] = fax;
    data['tax_reg'] = taxReg;
    data['commerce_reg'] = commerceReg;
    data['status'] = status;
    data['logo'] = logo;
    data['facebook'] = facebook;
    data['twitter'] = twitter;
    data['instagram'] = instagram;
    data['linkedin'] = linkedin;
    data['old_balance'] = oldBalance;
    data['balance'] = balance;
    data['negative_balance'] = negativeBalance;
    data['min_negative_balance'] = minNegativeBalance;
    data['evisa_price_increase'] = evisaPriceIncrease;
    data['last_name_res'] = lastNameRes;
    data['first_name_res'] = firstNameRes;
    data['res_mobile'] = resMobile;
    data['res_email'] = resEmail;
    if (preferences != null) {
      data['preferences'] = preferences!.toJson();
    }
    data['signed_contract'] = signedContract;
    data['agreement_file'] = agreementFile;
    data['key'] = key;
    data['label'] = label;
    data['value'] = value;
    return data;
  }
}
