import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yal_spa/core/config/themes/app_theme.dart';
import 'package:yal_spa/core/config/utils/assets_manager.dart';
import 'package:yal_spa/features/setting/presstion/widget/body_setting_screen.dart';

import '../../../core/config/widgets/custom_appbar.dart';
import '../../../generated/translations.g.dart';
import 'controller/setting_provider.dart';

@RoutePage()
class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context,ref) {
    final settingProvider = ref.read(settingProviderScreen);
    return Scaffold(
      appBar: CustomAppBar(
        title: tr.settings,
        back: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.0,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional(-1, 1),
                    children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/cbc6/fb0e/8971bd6bfedd1fa47cfc6b6ee756d209?Expires=1736121600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qQNEMFbgfGQHajU04qW8WKNpgHJ81FwlIhZ7GfI5xKqAL7OCeFhz1YHMtpaV1fuJYE4~cLA7PNowk-oq187rDvXmtskJxT4CTUzKT12rKN9HkqgbXT4dSahbz0P4RFuG5GSjOYnK-YKH6gxMYbVfRfawQjqkVM~Kd89SSrSZYqcA0-9-7lwHSV0Y9MLKL3b2aWgRLBh42FCimmpaMFCpsuKbaO1OUrLZKtQL5dmnqHvstFxsNbjsaM0TUcAAnzd-ilpgy3zwoSfMhfaC0qsx9yul8tX-Kb0PrXuj7du15SbQZNQv3rhHPCEhZUDPh9KhZw~c0wPLgA2flhyuNJdkww__'),
                    backgroundColor: AppTheme.scaffoldBackground,
                    radius: 50.0,
                  ),
                      InkWell(
                        splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: (){},
                          child: SvgPicture.asset(AssetsManger.editImage))
                ]),
              ],
            ),
            BodySettingScreen(),
          ],
        ),
      ),
    );
  }
}
