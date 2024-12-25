import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/widgets/custom_appbar.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/item_category/widget/item_category_body.dart';

import '../../../../../data/model/home_screen_model.dart';
@RoutePage()
class ItemCategoryScreen extends StatelessWidget {
  const ItemCategoryScreen({super.key,required this.data,});

  final HomeModel data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  data.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                CustomAppBar(
                  backgroundColor: Colors.transparent,
                )
              ],
            ),
            ItemCategoryBody(data : data),
          ],
        ),
      ),
    );
  }
}
