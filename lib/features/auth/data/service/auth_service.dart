import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/utils/custom_state.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
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

  Future<DataModel?> login(String phone) async {
    final body = {
      'phone': phone,
    };

    final res = CustomResponse(await client.post(Endpoints.login, body: body));

    if (res.isError) throw res.message;

    if (res.data is Json) {
      final data = res.data as Map<String, dynamic>;
      final dataMode = DataModel.fromJson(data);
      await UserPrefs.setUserToken(dataMode.token);
      final String token = (UserPrefs.getUserToken()).toString();
      log('token',name: 'tokenService1');
      log(token,name: 'tokenService');
      return dataMode;
    } else if (res.data is List) {
      log('Data field is an empty list.',name: 'data is a list');
      return null;
    } else {
      throw 'Invalid response: Unexpected data format';
    }
  }

  Future<DataModel?> otp(String phone, String otp) async {
    final body = {
      'phone': phone,
      'otp': otp,
    };
    final res = CustomResponse(await client.post(Endpoints.otp, body: body));

    if (res.isError) throw res.message;

    if (res.data is Json) {
      final data = res.data as Map<String, dynamic>;
      final dataMode = DataModel.fromJson(data);
      final tokenWithBearer = 'Bearer ${dataMode.token}';
      await UserPrefs.setUserToken(tokenWithBearer);
      final String token = (UserPrefs.getUserToken()).toString();
      log('token',name: 'tokenServiceOtp');
      log(token,name: 'tokenServiceOtp');
      return dataMode;
    } else if (res.data is List) {
      log('Data field is an empty list.',name: 'data is a list otp.');
      return null;
    } else {
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
