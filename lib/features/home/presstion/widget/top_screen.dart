import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/generated/style_atoms.dart';

import '../../../../core/config/router/router.dart';
import '../../../../core/config/themes/app_theme.dart';
import '../../../../core/data/locale/user_pref.dart';
import '../../../../generated/translations.g.dart';
import '../../../auth/presstion/login/controller/otp_provider.dart';

class TopScreen extends ConsumerWidget {
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final topScreenHome = ref.read(otpProviderScreen);
    final String profileImage = (UserPrefs.getProfileImage()).toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 20.0,
          backgroundImage: NetworkImage(
            profileImage,
          ),
          backgroundColor: AppTheme.scaffoldBackground,
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
