// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardScreen(),
      );
    },
    EnterLocationRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterLocation(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavoriteScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ItemCategoryRoute.name: (routeData) {
      final args = routeData.argsAs<ItemCategoryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ItemCategoryScreen(
          key: args.key,
          data: args.data,
        ),
      );
    },
    LocationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(key: args.key),
      );
    },
    NotificationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationScreen(),
      );
    },
    OffersRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OffersScreen(),
      );
    },
    OtpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpScreen(),
      );
    },
    ProductRoute.name: (routeData) {
      final args = routeData.argsAs<ProductRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProductScreen(
          key: args.key,
          data: args.data,
        ),
      );
    },
    SettingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingScreen(),
      );
    },
    YallahSpaLayOutRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YallahSpaLayOut(),
      );
    },
    EditProfileRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileScreen(),
      );
    },
    EditProfileOtpRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileOtp(),
      );
    },
    AboutAppRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutAppScreen(),
      );
    },
    TermsAndConditionsRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionsScreen(),
      );
    },
    PrivacyPolicyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyScreen(),
      );
    },
    ContactUsRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
    ArticlesRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArticlesScreen(),
      );
    },
    ArticlesItemBodyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArticlesItemBody(),
      );
    },
  };
}

/// generated route for
/// [CardScreen]
class CardRoute extends PageRouteInfo<void> {
  const CardRoute({List<PageRouteInfo>? children})
      : super(
          CardRoute.name,
          initialChildren: children,
        );

  static const String name = 'CardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EnterLocation]
class EnterLocationRouter extends PageRouteInfo<void> {
  const EnterLocationRouter({List<PageRouteInfo>? children})
      : super(
    EnterLocationRouter.name,
          initialChildren: children,
        );

  static const String name = 'EnterLocationRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavoriteScreen]
class FavoriteRoute extends PageRouteInfo<void> {
  const FavoriteRoute({List<PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ItemCategoryScreen]
class ItemCategoryRoute extends PageRouteInfo<ItemCategoryRouteArgs> {
  ItemCategoryRoute({
    Key? key,
    required HomeModel data,
    List<PageRouteInfo>? children,
  }) : super(
          ItemCategoryRoute.name,
          args: ItemCategoryRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ItemCategoryRoute';

  static const PageInfo<ItemCategoryRouteArgs> page =
      PageInfo<ItemCategoryRouteArgs>(name);
}

class ItemCategoryRouteArgs {
  const ItemCategoryRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final HomeModel data;

  @override
  String toString() {
    return 'ItemCategoryRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [LocationScreen]
class LocationRoute extends PageRouteInfo<void> {
  const LocationRoute({List<PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<LoginRouteArgs> page = PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [NotificationScreen]
class NotificationRoute extends PageRouteInfo<void> {
  const NotificationRoute({List<PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OffersScreen]
class OffersRoute extends PageRouteInfo<void> {
  const OffersRoute({List<PageRouteInfo>? children})
      : super(
          OffersRoute.name,
          initialChildren: children,
        );

  static const String name = 'OffersRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpScreen]
class OtpRoute extends PageRouteInfo<void> {
  const OtpRoute({List<PageRouteInfo>? children})
      : super(
          OtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductScreen]
class ProductRoute extends PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    Key? key,
    required ProductData data,
    List<PageRouteInfo>? children,
  }) : super(
          ProductRoute.name,
          args: ProductRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductRoute';

  static const PageInfo<ProductRouteArgs> page =
      PageInfo<ProductRouteArgs>(name);
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.data,
  });

  final Key? key;

  final ProductData data;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [SettingScreen]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute({List<PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YallahSpaLayOut]
class YallahSpaLayOutRouter extends PageRouteInfo<void> {
  const YallahSpaLayOutRouter({List<PageRouteInfo>? children})
      : super(
    YallahSpaLayOutRouter.name,
          initialChildren: children,
        );

  static const String name = 'YallahSpaLayOutRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Edit Profile]
class EditProfileRouter extends PageRouteInfo<void> {
  const EditProfileRouter({List<PageRouteInfo>? children})
      : super(
    EditProfileRouter.name,
    initialChildren: children,
  );

  static const String name = 'EditProfileRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Edit Profile]
class EditProfileOtpRouter extends PageRouteInfo<void> {
  const EditProfileOtpRouter({List<PageRouteInfo>? children})
      : super(
    EditProfileOtpRouter.name,
    initialChildren: children,
  );

  static const String name = 'EditProfileOtpRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [About App]
class AboutAppRouter extends PageRouteInfo<void> {
  const AboutAppRouter({List<PageRouteInfo>? children})
      : super(
    AboutAppRouter.name,
    initialChildren: children,
  );

  static const String name = 'AboutAppRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [About App]
class TermsAndConditionsRouter extends PageRouteInfo<void> {
  const TermsAndConditionsRouter({List<PageRouteInfo>? children})
      : super(
    TermsAndConditionsRouter.name,
    initialChildren: children,
  );

  static const String name = 'TermsAndConditionsRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Privacy Policy]
class PrivacyPolicyRouter extends PageRouteInfo<void> {
  const PrivacyPolicyRouter({List<PageRouteInfo>? children})
      : super(
    PrivacyPolicyRouter.name,
    initialChildren: children,
  );

  static const String name = 'PrivacyPolicyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Contact Us]
class ContactUsRouter extends PageRouteInfo<void> {
  const ContactUsRouter({List<PageRouteInfo>? children})
      : super(
    ContactUsRouter.name,
    initialChildren: children,
  );

  static const String name = 'ContactUsRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [articles]
class ArticlesRouter extends PageRouteInfo<void> {
  const ArticlesRouter({List<PageRouteInfo>? children})
      : super(
    ArticlesRouter.name,
    initialChildren: children,
  );

  static const String name = 'ArticlesRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ArticlesItemBody]
class ArticlesItemBodyRouter extends PageRouteInfo<void> {
  const ArticlesItemBodyRouter({List<PageRouteInfo>? children})
      : super(
    ArticlesItemBodyRouter.name,
    initialChildren: children,
  );

  static const String name = 'ArticlesItemBodyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}