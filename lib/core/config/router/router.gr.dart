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
    AboutAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutAppScreen(),
      );
    },
    ArticlesItemBodyRoute.name: (routeData) {
      final args = routeData.argsAs<ArticlesItemBodyRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ArticlesItemBody(
          data: args.data,
          key: args.key,
        ),
      );
    },
    ArticlesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArticlesScreen(),
      );
    },
    CardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CardScreen(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsScreen(),
      );
    },
    DeleteAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DeleteAccountScreen(),
      );
    },
    EditProfileOtpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileOtp(),
      );
    },
    EditProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileScreen(),
      );
    },
    EnterLocationRoute.name: (routeData) {
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
    ItemOrderDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ItemDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ItemOrderDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    ItemServiceTeamRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ItemServiceTeam(),
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
    OrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrderScreen(),
      );
    },
    OtpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OtpScreen(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PrivacyPolicyScreen(),
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
    TermsAndConditionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TermsAndConditionsScreen(),
      );
    },
    YallahSpaLayOutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const YallahSpaLayOut(),
      );
    },
  };
}

/// generated route for
/// [AboutAppScreen]
class AboutAppRoute extends PageRouteInfo<void> {
  const AboutAppRoute({List<PageRouteInfo>? children})
      : super(
          AboutAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ArticlesItemBodyRoute]
class ArticlesItemBodyRoute extends PageRouteInfo<ArticlesItemBodyRouteArgs> {
  ArticlesItemBodyRoute({
    required ArticlesModel data,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
    ArticlesItemBodyRoute.name,
          args: ArticlesItemBodyRouteArgs(
            data: data,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ArticlesItemBodyRoute';

  static const PageInfo<ArticlesItemBodyRouteArgs> page =
      PageInfo<ArticlesItemBodyRouteArgs>(name);
}

class ArticlesItemBodyRouteArgs {
  const ArticlesItemBodyRouteArgs({
    required this.data,
    this.key,
  });

  final ArticlesModel data;

  final Key? key;

  @override
  String toString() {
    return 'ArticlesItemBodyRouteArgs{data: $data, key: $key}';
  }
}

/// generated route for
/// [ArticlesScreen]
class ArticlesRoute extends PageRouteInfo<void> {
  const ArticlesRoute({List<PageRouteInfo>? children})
      : super(
          ArticlesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArticlesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [ContactUsScreen]
class ContactUsRoute extends PageRouteInfo<void> {
  const ContactUsRoute({List<PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DeleteAccountScreen]
class DeleteAccountRoute extends PageRouteInfo<void> {
  const DeleteAccountRoute({List<PageRouteInfo>? children})
      : super(
          DeleteAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeleteAccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileOtpRoute]
class EditProfileOtpRoute extends PageRouteInfo<void> {
  const EditProfileOtpRoute({List<PageRouteInfo>? children})
      : super(
    EditProfileOtpRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileOtpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EnterLocationRoute]
class EnterLocationRoute extends PageRouteInfo<void> {
  const EnterLocationRoute({List<PageRouteInfo>? children})
      : super(
    EnterLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterLocationRoute';

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
/// [ItemDetailsRoute]
class ItemOrderDetailsRoute extends PageRouteInfo<ItemDetailsRouteArgs> {
  ItemOrderDetailsRoute({
    Key? key,
    required OrderModel model,
    List<PageRouteInfo>? children,
  }) : super(
    ItemOrderDetailsRoute.name,
          args: ItemDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ItemOrderDetailsRoute';

  static const PageInfo<ItemDetailsRouteArgs> page = PageInfo<ItemDetailsRouteArgs>(name);
}

class ItemDetailsRouteArgs {
  const ItemDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final OrderModel model;

  @override
  String toString() {
    return 'ItemDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [ItemServiceTeamRoute]
class ItemServiceTeamRoute extends PageRouteInfo<void> {
  const ItemServiceTeamRoute({List<PageRouteInfo>? children})
      : super(
    ItemServiceTeamRoute.name,
          initialChildren: children,
        );

  static const String name = 'ItemServiceTeamRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [OrderScreen]
class OrderRoute extends PageRouteInfo<void> {
  const OrderRoute({List<PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

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
/// [PrivacyPolicyScreen]
class PrivacyPolicyRoute extends PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

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
/// [TermsAndConditionsScreen]
class TermsAndConditionsRoute extends PageRouteInfo<void> {
  const TermsAndConditionsRoute({List<PageRouteInfo>? children})
      : super(
          TermsAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [YallahSpaLayOutRoute]
class YallahSpaLayOutRoute extends PageRouteInfo<void> {
  const YallahSpaLayOutRoute({List<PageRouteInfo>? children})
      : super(
    YallahSpaLayOutRoute.name,
          initialChildren: children,
        );

  static const String name = 'YallahSpaLayOutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
