import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../../auth/data/model/user_model.dart';

final settingServiceProvider = Provider<SettingService>(
  (ref) => SettingService(
    ref.read(dioClientProvider),
  ),
);

class SettingService {
  final DioClient client;

  SettingService(this.client);

  Future<UserModel> ProfileData() async {
    final res = CustomResponse(
      await client.get(Endpoints.profile,),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json);
    final userModel = UserModel.fromJson(data);
    log(userModel.toString());
  return userModel;
  }
}
