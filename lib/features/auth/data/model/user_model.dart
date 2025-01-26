import 'package:yal_spa/core/config/utils/custom_state.dart';

class DataModel {
  final String token;
  final UserModel user;
  final String type;

  DataModel({required this.token, required this.user, required this.type});

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
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
  final List<ProfileMedia> media;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.fcmToken,
    required this.createdAt,
    required this.media,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      fcmToken: json['fcm_token'] as String,
      createdAt: json['created_at'] as String,
      media: (json['media'] as List)
          .map((e) => ProfileMedia.fromJson(e as Json))
          .toList());

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['token'] = fcmToken;
    return data;
  }
}

class ProfileMedia {
  final int profileId;
  final String profileUuid;
  final int profileSize;
  final String profileOriginalUrl;

  ProfileMedia({
    required this.profileId,
    required this.profileUuid,
    required this.profileSize,
    required this.profileOriginalUrl,
  });

  factory ProfileMedia.fromJson(Json json) => ProfileMedia(
        profileId: json['id'] as int ?? 0,
        profileUuid: json['uuid'] as String ?? '',
        profileSize: json['size'] as int ?? 0,
        profileOriginalUrl: json['original_url'] as String ?? '',
      );
}
