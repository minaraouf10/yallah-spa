
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/config/utils/assets_manager.dart';
import '../../generated/translations.g.dart';
import 'controller/yallah_spa_layout_provider.dart';

@RoutePage()
class YallahSpaLayOut extends ConsumerWidget {
  const YallahSpaLayOut({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final layoutProvider = ref.read(yallahSpaLayoutProviderScreen);
    final curr = ref.watch(layoutProvider.currentIndex.provider);
    return Scaffold(
      body: layoutProvider.screens[curr],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: curr,
          onTap: (index) {
            layoutProvider.changeBottomNav(index);
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManger.homeIcon),
                label: tr.home,
                activeIcon: SvgPicture.asset(AssetsManger.homeBoldIcon)),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManger.heartIcon),
                label: tr.favorites,
                activeIcon: SvgPicture.asset(AssetsManger.heartBoldIcon)),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManger.cardIcon),
                label: tr.card,
                activeIcon: SvgPicture.asset(AssetsManger.cardBoldIcon)),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManger.discountIcon),
                label: tr.offers,
                activeIcon: SvgPicture.asset(AssetsManger.discountBoldIcon)),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(AssetsManger.settingIcon),
                label: tr.settings,
                activeIcon: SvgPicture.asset(AssetsManger.settingBoldIcon)),
          ],
          selectedLabelStyle: const TextStyle(
            fontFamily: 'Almarai',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Almarai',
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
