import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yal_spa/features/auth/presstion/login/login_screen.dart';
import 'package:yal_spa/features/bottom_nav/yallah_spa_layout.dart';
import 'package:yal_spa/features/card/presstion/card_screen.dart';
import 'package:yal_spa/features/favorites/presstion/favorite_screen.dart';
import 'package:yal_spa/features/home/data/model/home_screen_model.dart';
import 'package:yal_spa/features/home/presstion/home_screen.dart';
import 'package:yal_spa/features/notification/notification_screen.dart';
import 'package:yal_spa/features/offers/presstion/offers_screen.dart';
import 'package:yal_spa/features/setting/presstion/setting_screen.dart';

import '../../../features/auth/presstion/login/otp_screen.dart';
import '../../../features/home/presstion/product/product_screen.dart';
import '../../../features/home/presstion/widget/category/widget/item_category/item_category_screen.dart';
import '../../../features/home/presstion/widget/category/widget/item_category/widget/item_category_body.dart';
import '../../../features/location/presstion/enter_location.dart';
import '../../../features/location/presstion/location_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  //RouteType get defaultRouteType =>  RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(page: LocationRoute.page),
        AutoRoute(page: EnterLocationRouter.page),
        AutoRoute(page: YallahSpaLayOutRouter.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FavoriteRoute.page),
        AutoRoute(page: CardRoute.page),
        AutoRoute(page: OffersRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: ItemCategoryRoute.page),
        AutoRoute(page: ProductRoute.page),
      ];

  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
