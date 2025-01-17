import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/core/config/router/router.dart';
import 'package:yal_spa/features/setting/presstion/widget/item_setting.dart';
import 'package:yal_spa/generated/translations.g.dart';

import '../../../../core/config/utils/assets_manager.dart';

class BodySettingScreen extends StatelessWidget {
  const BodySettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        spacing: 12.0,
        children: [
          ItemSetting(
            icon: AssetsManger.editProfile,
            title: tr.Edit_your_personal_account_information,
            onPress: () => context.pushRoute(EditProfileRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.orders,
            title: tr.orders,
            onPress: () {},
          ),
          ItemSetting(
            icon: AssetsManger.articles,
            title: tr.articles,
            onPress: ()=> context.pushRoute(ArticlesRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.aboutApp,
            title: tr.abouut_app,
            onPress: () => context.pushRoute(AboutAppRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.conditions,
            title: tr.terms_and_conditions,
            onPress: () => context.pushRoute(TermsAndConditionsRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.privacy,
            title: tr.privacy_policy,
            onPress: () => context.pushRoute(PrivacyPolicyRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.contactUs,
            title: tr.Contact_us,
            onPress: () => context.pushRoute(ContactUsRouter()),
          ),
          ItemSetting(
            icon: AssetsManger.shareApp,
            title: tr.Share_app,
            onPress: () {},
          ),
          ItemSetting(
            icon: AssetsManger.changeLanguage,
            title: tr.Change_language,
            onPress: () {},
          ),
          ItemSetting(
            icon: AssetsManger.deleteAccount,
            title: tr.Delete_account,
            onPress: () {
              //  c
            },
          ),
          ItemSetting(
            icon: AssetsManger.logOut,
            title: tr.Log_out,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
