import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/favorites/presstion/widget/favorite_item.dart';
import 'package:yal_spa/features/home/presstion/widget/search.dart';
import 'package:yal_spa/generated/translations.g.dart';

@RoutePage()
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.favorites,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           Search(),
           Height(10.0),
           FavoriteItem()
          ],
        ),
      ),
    );
  }
}
