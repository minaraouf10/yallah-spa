import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/auth/data/model/user_model.dart';
import 'package:yal_spa/features/setting/data/model/articles_model.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../data/model/profile_model.dart';
import '../../data/service/setting_service.dart';

final settingProviderScreen = Provider<SettingLogic>(
  (ref) =>
      SettingLogic(ref: ref, settingService: ref.read(settingServiceProvider)),
);

class SettingLogic extends _SettingStates {
  SettingLogic({required super.ref, required this.settingService});

  final SettingService settingService;


  // Future<ProfileModel> getProfileData() async {
  //   isLoading.state = true;
  //   final profileModel = await settingService.ProfileData();
  //   profileImage.state = profileModel.media[0].profileOriginalUrl.toString();
  //   log(profileImage.state.toString(),name: 'profileImage');
  //   isLoading.state = false;
  //   return profileModel;
  // }

// Future <List<ArticlesModel>> Articles () async{
//   isLoading.state = true;
//   final articleModel = await settingService.getArticles();
//
// }
}

class _SettingStates {
  final ProviderRef ref;
  final CustomState<bool> isLoading;
  final CustomState<String> profileImage;

  _SettingStates({required this.ref})
      : isLoading = CustomState<bool>(ref, false),
   profileImage = CustomState<String>(ref, '');
}
