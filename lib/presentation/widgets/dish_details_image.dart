import 'package:flutter/material.dart';
import 'package:sample_upwork/presentation/widgets/share_button.dart';

class DishDetailsImageContainer extends StatelessWidget {
  const DishDetailsImageContainer({required this.dishImagePath, super.key});
  final String dishImagePath;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(dishImagePath),
          const ShareButton(),
        ],
      ),
    );
  }
}
