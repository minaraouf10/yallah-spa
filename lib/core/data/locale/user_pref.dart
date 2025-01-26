import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/data/locale/pref.dart';

final userPrefsProvider = Provider<UserPrefs>((ref) {
  return UserPrefs();
});

const sharedTokenId = 'token';
const profileImage = 'profile_image';

class UserPrefs {
  static final prefs = SharedPrefs.instance;

  static Future<void> setUserToken(String token) =>
      prefs.setString(sharedTokenId, token);

  static Future<void> setProfileImage(String image) =>
      prefs.setString(profileImage, image);

  static String getUserToken() => prefs.getString(sharedTokenId) ?? '';

  static String getProfileImage() => prefs.getString(profileImage) ?? '';

  static Future<void> deleteUserToken() async => prefs.remove(sharedTokenId);

  static bool get isUserLoggedIn => prefs.getString('token') != null;
}
