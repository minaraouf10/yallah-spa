import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/features/setting/data/model/articles_model.dart';

import '../../data/service/setting_service.dart';

final getArticlesProvider = FutureProvider<List<ArticlesModel>> (
    (ref) async {
      final settingService = ref.read(settingServiceProvider);
      final articles = await settingService.getArticles();
      log(articles.toString(),name:  'Articles');
      log(articles[0].image.toString(),name: 'imageArticles1');
      return articles;
    }
);