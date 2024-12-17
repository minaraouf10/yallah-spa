import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../../../core/data/locale/user_pref.dart';
import '../model/user_model.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => AuthService(ref.read(dioClientProvider),
      prefs: ref.read(userPrefsProvider)),
);

class AuthService {
  final DioClient client;

  final UserPrefs prefs;

  AuthService(this.client, {required this.prefs});

  // Future<UserModel> login(String phone) async {
  //   final body = {
  //     'phone': phone,
  //   };
  //   final res = CustomResponse(await client.post(Endpoints.login, body: body));
  //   if (res.isError) throw res.message;
  //   final data = res.data as Json;
  //
  //   final userModel = UserModel.fromJson(data);
  //   UserPrefs.setUserToken(userModel.token);
  //   return userModel;
  // }

  Future<UserModel?> login(String phone) async {
    final body = {
      'phone': phone,
    };

    // Create CustomResponse
    final res = CustomResponse(await client.post(Endpoints.login, body: body));

    // Throw an error if 'error' is true
    if (res.isError) throw res.message;

    // Handle the 'data' field dynamically
    if (res.data is Map<String, dynamic>) {
      // If 'data' is a JSON object, deserialize it
      final data = res.data as Map<String, dynamic>;
      final userModel = UserModel.fromJson(data);
      UserPrefs.setUserToken(userModel.token);
      return userModel;
    } else if (res.data is List) {
      // If 'data' is an empty list, return null or a default UserModel
      log('Data field is an empty list.');
      return null; // or handle it accordingly
    } else {
      // Unexpected format
      throw 'Invalid response: Unexpected data format';
    }
  }



  Future<void> signUp(
      String name, String email, String password, String phone) async {
    final body = {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
    };
    final res =
        CustomResponse(await client.post(Endpoints.register, body: body));
    if (res.isError) throw res.message;
    log(res.data.toString());
  }
}
