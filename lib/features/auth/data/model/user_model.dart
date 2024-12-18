class DataModel {
  final String token;
  final UserModel user;
  final String type;

  DataModel({
    required this.token,
    required this.user,
    required this.type
  });

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      DataModel(
        token: json['token'] as String,
        user: UserModel.fromJson(json['user']),
        //(json['user']).map((e) => UserModel.fromJson(e)),
        type: json['type'] as String,
      );

}

class UserModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String fcmToken;
  final String createdAt;
  final List media;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.fcmToken,
    required this.createdAt,
    required this.media,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      UserModel(
          id: json['id'] as int,
          name: json['name'] as String,
          email: json['email'] as String,
          phone: json['phone'] as String,
          fcmToken: json['fcm_token'] as String,
          createdAt: json['created_at'] as String,
          media: (json['media'] as List)
      );


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['token'] = fcmToken;
    return data;
  }
}