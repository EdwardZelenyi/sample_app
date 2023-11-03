import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class App extends StatelessWidget {
  const App({required this.appRouter, required this.screenSize, super.key});
  final AppRouter appRouter;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: screenSize,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            _hideKeyboard(context);
          },
          child: MaterialApp.router(
            theme: ThemeData(
              fontFamily: poppinsFamily,
              scaffoldBackgroundColor: Palette.scaffoldBackgroundColor,
            ),
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }

  void _hideKeyboard(BuildContext context) {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}
