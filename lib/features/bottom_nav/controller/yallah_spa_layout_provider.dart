import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/config/utils/custom_state.dart';
import '../../card/presstion/card_screen.dart';
import '../../favorites/presstion/favorite_screen.dart';
import '../../home/presstion/home_screen.dart';
import '../../offers/presstion/offers_screen.dart';
import '../../setting/presstion/controller/setting_provider.dart';
import '../../setting/presstion/setting_screen.dart';

final yallahSpaLayoutProviderScreen = Provider<YallahSpaLayOutLogic>(
  (ref) => YallahSpaLayOutLogic(ref: ref,settingLogic: ref.read(settingProviderScreen)),
);

class YallahSpaLayOutLogic extends _YallahSpaLayOutStates {
  YallahSpaLayOutLogic({required super.ref, required this.settingLogic});

  final SettingLogic settingLogic;

  List<Widget> screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const CardScreen(),
    const OffersScreen(),
    const SettingScreen(),
  ];

  void changeBottomNav(int index) {
    currentIndex.state = index;
  }
}

class _YallahSpaLayOutStates {
  final ProviderRef ref;
  final CustomState<int> currentIndex;

  _YallahSpaLayOutStates({required this.ref})
      : currentIndex = CustomState<int>(ref, 0);
}
