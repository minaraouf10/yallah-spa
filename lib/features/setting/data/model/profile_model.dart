import '../../../../core/config/utils/custom_state.dart';

class ProfileModel {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String token;
  final String created_at;
  final String updated_at;
  final List<ProfileMedia> media;

  ProfileModel({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.token,
    required this.created_at,
    required this.updated_at,
    required this.media,
  });

  factory ProfileModel.fromJson(Json json) =>
      ProfileModel(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        phone: json['phone'] as String,
        token: json['fcm_token'] as String,
        created_at: json['created_at'] as String,
        updated_at: json['updated_at'] as String,
        media: (json['media'] as List)
            .map((e) => ProfileMedia.fromJson(e))
            .toList(),
      );
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
    required this.profileOriginalUrl,});

  factory ProfileMedia.fromJson(Json json) =>
      ProfileMedia(
        profileId: json['id'] as int ?? 0,
        profileUuid: json['uuid'] as String ?? '',
        profileSize: json['size'] as int ?? 0,
        profileOriginalUrl: json['original_url'] as String ?? '',
      );

}