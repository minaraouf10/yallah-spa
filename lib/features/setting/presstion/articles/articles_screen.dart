import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yal_spa/core/config/extensions/future_provider_screen.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/primary_widget/default_divider.dart';
import 'package:yal_spa/features/setting/presstion/articles/widget/articles_item.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/router/router.dart';
import '../controller/get_articles.dart';

@RoutePage()
class ArticlesScreen extends ConsumerWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.articles,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ArticlesItem(),
      ),
    );
  }
}