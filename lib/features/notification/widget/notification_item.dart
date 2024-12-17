import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../core/config/utils/assets_manager.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 42,
            alignment: AlignmentDirectional.topStart,
            child: SvgPicture.asset(
              AssetsManger.notificationsIcon,
            ),
          ),
          const Width(12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'استكشف مجموعة جديدة من احدث العروضُ المميزةُ العالمية والعصريه',
                  style: context.regular14TextMain,
                ),
                Text(
                  'منذ يوم',
                  style: context.regular12TextSub,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
