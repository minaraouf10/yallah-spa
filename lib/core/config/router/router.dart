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
import 'package:yal_spa/features/setting/data/model/articles_model.dart';
import 'package:yal_spa/features/setting/presstion/articles/widget/articles_item_body.dart';
import 'package:yal_spa/features/setting/presstion/delete_account/delete_account_screen.dart';
import 'package:yal_spa/features/setting/presstion/setting_screen.dart';

import '../../../features/auth/presstion/login/otp_screen.dart';
import '../../../features/home/presstion/product/product_screen.dart';
import '../../../features/home/presstion/widget/category/widget/item_category/item_category_screen.dart';
import '../../../features/home/presstion/widget/category/widget/item_category/widget/item_service_team.dart';
import '../../../features/location/presstion/enter_location.dart';
import '../../../features/location/presstion/location_screen.dart';
import '../../../features/setting/data/model/order_model.dart';
import '../../../features/setting/presstion/about_app/about_app_screen.dart';
import '../../../features/setting/presstion/articles/articles_screen.dart';
import '../../../features/setting/presstion/contact_us/contact_us_screen.dart';
import '../../../features/setting/presstion/ediit_profile/edit_profile_otp.dart';
import '../../../features/setting/presstion/ediit_profile/edit_profile_screen.dart';
import '../../../features/setting/presstion/order/order_screen.dart';
import '../../../features/setting/presstion/order/widget/Item_details.dart';
import '../../../features/setting/presstion/privacy_policy/privacy_policy_screen.dart';
import '../../../features/setting/presstion/terms_and_conditions/terms_conditionss_screen.dart';
import '../../data/locale/user_pref.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  //RouteType get defaultRouteType =>  RouteType.material();
//        AutoRoute(page: LoginRoute.page, initial:! UserPrefs.isUserLoggedIn),
  //        AutoRoute(page: YallahSpaLayOutRouter.page,initial: UserPrefs.isUserLoggedIn),
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page
        ,initial: true
        ),
        AutoRoute(page: OtpRoute.page),
        AutoRoute(page: LocationRoute.page),
        AutoRoute(page: EnterLocationRoute.page),
        AutoRoute(page: YallahSpaLayOutRoute.page,
        //    initial: UserPrefs.isUserLoggedIn
        ),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FavoriteRoute.page),
        AutoRoute(page: CardRoute.page),
        AutoRoute(page: OffersRoute.page),
        AutoRoute(page: SettingRoute.page),
        AutoRoute(page: NotificationRoute.page),
        AutoRoute(page: ItemCategoryRoute.page),
        AutoRoute(page: ProductRoute.page),
        AutoRoute(page: EditProfileRoute.page),
        AutoRoute(page: EditProfileOtpRoute.page),
        AutoRoute(page: AboutAppRoute.page),
        AutoRoute(page: TermsAndConditionsRoute.page),
        AutoRoute(page: PrivacyPolicyRoute.page),
        AutoRoute(page: ContactUsRoute.page),
        AutoRoute(page: ArticlesRoute.page),
        AutoRoute(page: ArticlesItemBodyRoute.page),
        AutoRoute(page: OrderRoute.page),
        AutoRoute(page: DeleteAccountRoute.page),
        AutoRoute(page: ItemOrderDetailsRoute.page),
      ];

  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
