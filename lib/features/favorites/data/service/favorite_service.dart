import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/api_helper/dio_client.dart';
import 'package:yal_spa/core/api_helper/endpoints.dart';
import 'package:yal_spa/features/favorites/data/model/favorite_model.dart';
import '../../../../core/api_helper/custom_response.dart';
import '../../../../core/api_helper/dio_providers.dart';
import '../../../../core/config/utils/custom_state.dart';
import '../../../../core/data/locale/user_pref.dart';

final favoriteServiceProvider = Provider<FavoriteService>(
  (ref) => FavoriteService(
    ref.read(dioClientProvider),
    ref.read(userPrefsProvider)
  ),
);

class FavoriteService {
  final DioClient client;
  final UserPrefs prefs;
  FavoriteService(this.client, this.prefs);

  Future<List<FavoriteModel>> getFavoriteData()async{
    final String token =(UserPrefs.getUserToken()).toString();

    final res = CustomResponse(await client.get(Endpoints.getAllFavorite));
    if(res.isError) throw res.message;
    log(token,name: 'token in favorite service');
    if (res.data == null || res.data.isEmpty) {
      throw 'No data found';
    }
    final List data = res.data;
    final favoriteModel = data.map((e)=>FavoriteModel.fromJson(e as Json)).toList();
    log(favoriteModel.toString(),name: 'favoriteModel');
    return favoriteModel;
  }
}