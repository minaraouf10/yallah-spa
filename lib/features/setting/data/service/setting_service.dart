import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/setting/data/model/articles_model.dart';

import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_client.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/api_helper/endpoints.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../model/profile_model.dart';

final settingServiceProvider = Provider<SettingService>(
  (ref) => SettingService(
    ref.read(dioClientProvider),
  ),
);

class SettingService {
  final DioClient client;

  SettingService(this.client);

  Future<ProfileModel> ProfileData() async {
    final res = CustomResponse(
      await client.get(
        Endpoints.profile,
      ),
    );
    if (res.isError) throw res.message;
    final data = (res.data as Json);
    final profileModel = ProfileModel.fromJson(data);
    log(profileModel.toString());
    return profileModel;
  }

  Future<List<ArticlesModel>> getArticles() async {
    final res = CustomResponse(await client.get(Endpoints.getAllArticles));
    if (res.isError) throw res.message;

    if (res.data is List) {
      final List data = res.data as List;
      final articlesModels =
      data.map((e) => ArticlesModel.fromJson(e as Json)).toList();
      log(articlesModels.toString(),name:' articlesModels is as List');
      return articlesModels;
    }
    else if (res.data is Json) {
      final data = res.data as Map<String, dynamic>;
      final articlesModels = ArticlesModel.fromJson(data);
      log(articlesModels.toString(),name:' articlesModels is as map');

      return [articlesModels];
    }
    else {
      throw 'Invalid response: Unexpected data format';
    }

  }
}
