class UserModel {
  late int id;
  late String name;
  late String phone;
  late String token;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['token'] = token;
    return data;
  }
}
