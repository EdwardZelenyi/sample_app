import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/gen/assets.gen.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

import 'package:sample_upwork/presentation/widgets/bottom_navigation_bar_icon.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({required this.tabsRouter, super.key});
  final TabsRouter tabsRouter;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      enableFeedback: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      currentIndex: widget.tabsRouter.activeIndex,
      onTap: widget.tabsRouter.setActiveIndex,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Palette.textColor,
      unselectedItemColor: Palette.textColor,
      selectedLabelStyle:
          TextStyle(fontFamily: TextStyles.commonPoppins.fontFamily),
      unselectedLabelStyle:
          TextStyle(fontFamily: TextStyles.commonPoppins.fontFamily),
      selectedFontSize: 12.sp,
      unselectedFontSize: 12.sp,
      iconSize: 22.h,
      items: [
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.home,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.home,
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.shoppingList,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.shoppingList,
          ),
          label: 'Shopping list',
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            imagePath: Assets.svg.leftovers,
            isActive: false,
          ),
          activeIcon: BottomNavigationBarIcon(
            imagePath: Assets.svg.leftovers,
            isActive: true,
          ),
          label: 'Leftovers',
        ),
        BottomNavigationBarItem(
          icon: BottomNavigationBarIcon(
            isActive: false,
            imagePath: Assets.svg.settings,
          ),
          activeIcon: BottomNavigationBarIcon(
            isActive: true,
            imagePath: Assets.svg.settings,
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
