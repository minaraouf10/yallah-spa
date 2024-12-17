import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../core/config/router/router.dart';
import '../../../../generated/translations.g.dart';

class TopScreen extends StatelessWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          AssetsManger.userImage,
          alignment: AlignmentDirectional.topEnd,
          width: 40,
          height: 40,
        ),
        const Width(8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        const Spacer(),
        InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              context.pushRoute(const NotificationRoute());
            },
            child: SvgPicture.asset(AssetsManger.notificationIcon)),
      ],
    );
  }
}
