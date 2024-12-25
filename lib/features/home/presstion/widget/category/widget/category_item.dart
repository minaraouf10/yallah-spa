import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../core/config/router/router.dart';
import '../../../../data/model/home_screen_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
    required this.data,
  });

  final String image;
  final String title;
  final HomeModel data;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width: 150.0,
      child: GestureDetector(
        onTap: () {
          context.pushRoute(ItemCategoryRoute(data : data));
        },
        child: Stack(
          children: [
            Image(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.65)),
                child: Text(
                  title,
                  style: context.regular12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
