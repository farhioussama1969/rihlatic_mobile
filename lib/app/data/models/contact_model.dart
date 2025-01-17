class ContactModel {
  String? email;
  String? phone;
  String? fax;
  String? website;

  ContactModel({this.email, this.phone, this.fax, this.website});

  ContactModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    phone = json['phone'];
    fax = json['fax'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() => {
        'email': email,
        'phone': phone,
        'fax': fax,
        'website': website,
      };
}
