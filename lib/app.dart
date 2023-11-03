import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';

class App extends StatelessWidget {
  const App({required this.appRouter, required this.screenSize, super.key});
  final AppRouter appRouter;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: screenSize,
      builder: (context, child) {
        return MaterialApp.router(
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
