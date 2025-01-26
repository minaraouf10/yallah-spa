import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/themes/app_theme.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/core/config/widgets/custom_sized_box.dart';
import 'package:yal_spa/features/setting/presstion/widget/body_setting_screen.dart';

import '../../../core/config/widgets/custom_appbar.dart';
import '../../../core/data/locale/user_pref.dart';
import '../../../generated/translations.g.dart';
import '../../auth/presstion/login/controller/otp_provider.dart';
import 'controller/setting_provider.dart';

@RoutePage()
class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final settingProvider = ref.read(otpProviderScreen);
    final String profileImage = (UserPrefs.getProfileImage()).toString();

    return Scaffold(
      appBar: CustomAppBar(
        title: tr.settings,
        back: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional(-1, 1),
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        profileImage,
                      ),
                      backgroundColor: AppTheme.scaffoldBackground,
                      radius: 50.0,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {},
                      child: SvgPicture.asset(AssetsManger.editImage),
                    )
                  ],
                ),
              ],
            ),
            Height(10.0),
            BodySettingScreen(),
          ],
        ),
      ),
    );
  }
}
