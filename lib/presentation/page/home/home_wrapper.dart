import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeNestedWrapperPage extends StatelessWidget {
  const HomeNestedWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AutoRouter(),
    );
  }
}
