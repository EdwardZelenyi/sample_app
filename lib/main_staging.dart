import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/app.dart';

import 'package:sample_upwork/presentation/router/app_router.dart';

Future<void> main() async {
  final appRouter = AppRouter();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  const screenSize = Size(375, 812);
  await ScreenUtil.ensureScreenSize();

  WidgetsFlutterBinding.ensureInitialized();

  runApp(App(appRouter: appRouter, screenSize: screenSize));
}
