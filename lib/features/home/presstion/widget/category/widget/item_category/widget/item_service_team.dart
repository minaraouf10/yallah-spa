import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/themes/app_colors.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

@RoutePage()
class ItemServiceTeam extends StatelessWidget {
  const ItemServiceTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.all(8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(5),
                border: Border.all(color: AppColors.textPlaceholder)),
            child: Row(
              children: [
                Image.asset(
                  AssetsManger.serviceTeamImage,
                  height: 55,
                  width: 55,
                ),
                const Width(6.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'مريم احمد ',
                      style: context.bold12TextMain,
                    ),
                    const Height(6.0),
                    Text(
                      '+ 6 سنوات من الخبرة',
                      style: context.regular12TextSub,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
