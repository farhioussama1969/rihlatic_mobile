class AppVersionModel {
  String? required;
  String? optional;
  String? appUrl;

  AppVersionModel({this.required, this.optional, this.appUrl});

  AppVersionModel.fromJson(Map<String, dynamic> json) {
    required = json['required'];
    optional = json['optional'];
    appUrl = json['app_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['required'] = required;
    data['optional'] = optional;
    data['app_url'] = appUrl;
    return data;
  }
}
