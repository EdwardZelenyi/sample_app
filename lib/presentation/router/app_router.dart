import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/page/details/dish_details_page.dart';

import 'package:sample_upwork/presentation/page/home/home_page.dart';
import 'package:sample_upwork/presentation/page/home/home_wrapper.dart';
import 'package:sample_upwork/presentation/page/mock/leftovers_page.dart';
import 'package:sample_upwork/presentation/page/mock/settings_page.dart';
import 'package:sample_upwork/presentation/page/mock/shopping_list_page.dart';
import 'package:sample_upwork/presentation/page/navigation_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          path: '/',
          page: NavigationRoute.page,
          children: [
            AutoRoute(
              page: HomeNestedWrapperRoute.page,
              path: 'home',
              children: [
                AutoRoute(page: HomeRoute.page, initial: true),
                AutoRoute(page: DishDetailsRoute.page)
              ],
            ),
            AutoRoute(page: ShoppingListRoute.page, path: 'shopping-list'),
            AutoRoute(page: LeftoversRoute.page, path: 'leftovers'),
            AutoRoute(page: SettingsRoute.page, path: 'settings'),
          ],
        ),
      ];
}
