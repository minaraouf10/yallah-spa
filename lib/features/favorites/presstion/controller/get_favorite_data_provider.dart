import 'dart:developer';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/favorites/data/model/favorite_model.dart';

import '../../data/service/favorite_service.dart';

final favoriteProvider = FutureProvider.autoDispose<List<FavoriteModel>>(
      (ref) async {
    final favoriteService = ref.read(favoriteServiceProvider);
    final favorite = await favoriteService.getFavoriteData();
    log(favorite.toString(), name: 'getFavoriteData');
    return favorite;
  },
);