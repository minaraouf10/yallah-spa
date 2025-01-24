import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/auth/data/model/user_model.dart';

import '../../../../core/config/utils/custom_state.dart';
import '../../data/service/setting_service.dart';

final settingProviderScreen = Provider<SettingLogic>(
  (ref) =>
      SettingLogic(ref: ref, settingService: ref.read(settingServiceProvider)),
);

class SettingLogic extends _SettingStates {
  SettingLogic({required super.ref, required this.settingService});

  final SettingService settingService;

  // Future<void> getData() async {
  //   isLoading.state = true;
  //   await Future.delayed(const Duration(seconds: 2));
  //   isLoading.state = false;
  // }

  Future<UserModel> getProfileData() async {
    isLoading.state = true;
    final userModel = settingService.ProfileData();
    final String profileImage = userModel.toString();
    return userModel;
  }
}

class _SettingStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;

  _SettingStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false);
}
