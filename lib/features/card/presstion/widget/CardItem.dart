import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/card/data/model/card_model.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../core/config/themes/app_colors.dart';
import '../controller/card_provider.dart';

class CardItem extends ConsumerWidget {
  final  ItemCard model;
  const CardItem({super.key,required this.model});

  @override
  Widget build(BuildContext context,ref) {
    final cardItemProvider = ref.read(cardProviderScreen);
    ref.watch(cardItemProvider.isLoading.provider);
    final String dateTime = model.orderDate;
    final String dateOnly = dateTime.split(' ')[0];
    return Card(
      elevation: 4.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
      spacing: 10.0,
      children: [
        Width(0.5),
        Image.network(
          model.product.image,
          fit: BoxFit.cover,
          height: 85.0,
          width: 80.0,
        ),
        Flexible(
          child: Column(
            spacing: 2.0,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '90 دقيقة ',
                style: context.regular11TextSub,
              ),
              Text(
                model.product.nameAR,
                style: context.bold12TextMain,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsManger.locationCardIcon),
                  Width(6.0),
                  Flexible(
                    child: Text(
                      model.locationDescription,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis, // الحد من النص الزائد
                      style: TextStyle(fontSize: 8.0, color: AppColors.textSub),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsManger.clockCardIcons),
                  Width(6.0),
                  Text(
                    dateOnly,
                    style: TextStyle(fontSize: 8.0, color: AppColors.textSub),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(AssetsManger.clockCardIcons),
                  Width(6.0),
                  Text(
                    'هدي الشريف',
                    style: TextStyle(fontSize: 8.0, color: AppColors.textSub),
                  )
                ],
              ),
              Text(
                ' ${model.product.price} ر.س',
                style: context.bold11TextMain,
              ),
            ],
          ),
        ),
        Column(
          spacing: 55.0,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
              Icons.delete,
              color: Colors.red,
            ),
            Row(
              spacing: 9.0,
              children: [
                InkWell(
                  onTap: () => cardItemProvider.addNumberOfCount(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                      size: 15.0,
                    ),
                  ),
                ),

                Text(
                  '${cardItemProvider.count.state}',
                  style: context.bold16TextMain,
                ),

                InkWell(
                  onTap: () => cardItemProvider.minusNumberOfCount(),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.remove,
                      color: AppColors.white,
                      size: 15.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Width(0.5),
      ],
    )
    );
  }
}