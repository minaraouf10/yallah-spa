import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/features/home/presstion/widget/category/widget/category_item.dart';
import 'package:yal_spa/generated/style_atoms.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../../core/config/widgets/custom_sized_box.dart';


class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr.Your_beauty_is_a_journey_that_begins_with_our_services,
          style: context.bold14Primary,
        ),
        const Height(12.0),
         const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItem(),
            CategoryItem(),
            CategoryItem(),
          ],
        ),
      ],
    );
  }
}
