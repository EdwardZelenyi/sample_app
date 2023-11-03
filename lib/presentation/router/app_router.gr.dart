// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LeftoversRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LeftoversPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    ShoppingListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ShoppingListPage(),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationPage(),
      );
    },
    DishDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DishDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DishDetailsPage(
          dish: args.dish,
          key: args.key,
        ),
      );
    },
    HomeNestedWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeNestedWrapperPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
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
/// [LeftoversPage]
class LeftoversRoute extends PageRouteInfo<void> {
  const LeftoversRoute({List<PageRouteInfo>? children})
      : super(
          LeftoversRoute.name,
          initialChildren: children,
        );

  static const String name = 'LeftoversRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ShoppingListPage]
class ShoppingListRoute extends PageRouteInfo<void> {
  const ShoppingListRoute({List<PageRouteInfo>? children})
      : super(
          ShoppingListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DishDetailsPage]
class DishDetailsRoute extends PageRouteInfo<DishDetailsRouteArgs> {
  DishDetailsRoute({
    required Dish dish,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          DishDetailsRoute.name,
          args: DishDetailsRouteArgs(
            dish: dish,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DishDetailsRoute';

  static const PageInfo<DishDetailsRouteArgs> page =
      PageInfo<DishDetailsRouteArgs>(name);
}

class DishDetailsRouteArgs {
  const DishDetailsRouteArgs({
    required this.dish,
    this.key,
  });

  final Dish dish;

  final Key? key;

  @override
  String toString() {
    return 'DishDetailsRouteArgs{dish: $dish, key: $key}';
  }
}

/// generated route for
/// [HomeNestedWrapperPage]
class HomeNestedWrapperRoute extends PageRouteInfo<void> {
  const HomeNestedWrapperRoute({List<PageRouteInfo>? children})
      : super(
          HomeNestedWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeNestedWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
