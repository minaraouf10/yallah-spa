import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';
import 'package:yal_spa/features/offers/presstion/widget/offerItem.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../favorites/presstion/widget/search.dart';
import '../../home/presstion/widget/category/widget/category_item.dart';
import '../../home/presstion/widget/category/widget/item_category/widget/product_item.dart';

@RoutePage()
class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'عروضٌ مُذهلةٌ لجمالٍ لا مثيلَ له!',
                style: context.bold18TextMain,
              ),
              Height(12.0),
              Text('لا تفوّتي فرصةَ الاستفادةِ من عروضنا المُميّزةِ التي تُساعدُكِ على الاهتمامِ بجمالكِ بأقلّ التكاليفِ.',style:
                context.regular14TextSub,),
              Height(16.0),
              Search(),
              Height(16.0),
              offerItem()
            ],
          ),
        ),
      ),
    );
  }
}
