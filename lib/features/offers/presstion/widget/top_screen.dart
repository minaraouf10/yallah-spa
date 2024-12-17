import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../generated/translations.g.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(AssetsManger.notificationIcon),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              tr.delivery_to,
              style: context.regular14TextMain,
            ),
            Text(
              'مدينة الرياض بوليفارد، الرياض',
              style: context.regular12TextSub,
            )
          ],
        ),
        const Width(8.0),
        Image.asset(
          AssetsManger.userImage,
          alignment: AlignmentDirectional.topEnd,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}
