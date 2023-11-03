import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';
import 'package:sample_upwork/presentation/widgets/custom_bottom_bar.dart';

@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: AutoTabsScaffold(
        routes: const <PageRouteInfo<dynamic>>[
          HomeRoute(),
          ShoppingListRoute(),
          LeftoversRoute(),
          SettingsRoute(),
        ],
        bottomNavigationBuilder: (_, TabsRouter tabsRouter) {
          return CustomBottomBar(tabsRouter: tabsRouter);
        },
      ),
    );
  }
}
