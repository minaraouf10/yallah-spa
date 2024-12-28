import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../core/config/widgets/primary_widget/default_divider.dart';

class ItemSetting extends StatelessWidget {
  const ItemSetting({
    super.key,
    required this.icon,
    required this.title,
    required this.onPress,
  });

  final String icon;
  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        spacing: 8.0,
        children: [
          Row(
            children: [
              SvgPicture.asset(AssetsManger.editProfile),
              Width(12.0),
              Text(
                title,
                style: context.regular12TextMain,
              ),
              Spacer(),
              Transform.scale(
                scale: 0.6,
                child: Icon(Icons.arrow_forward_ios_rounded,
                ),
              ),
            ],
          ),
          DefaultDivider()
        ],
      ),
    );
  }
}
