import 'package:yal_spa/core/data/locale/user_pref.dart';

import '../../config/router/router.dart';

class RoutingPrefs {
  RoutingPrefs._();

  static final initial = UserPrefs.isUserLoggedIn
      ? HomeRoute()
      : LoginRoute();
// ? RouteNames.shibrawiLayout
// : RouteNames.onBoarding;

// static String get initialRoute =>
//     //RouteNames.settingScreen;
//     initial;
}
