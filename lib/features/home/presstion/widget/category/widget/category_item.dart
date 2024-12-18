import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../../../core/config/router/router.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.0,
      width: 105.0,
      child: GestureDetector(
        onTap: () {
          context.pushRoute(ItemCategoryRoute());
        },
        child: Stack(
          children: [
             Image(
              image: NetworkImage(image),
            ),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.65)),
                child: Text(
                  title,
                 // 'المكياجُ والرموشُ',
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
