import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  const BottomNavigationBarIcon({
    required this.isActive,
    required this.imagePath,
    super.key,
  });
  final bool isActive;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isActive ? Palette.bottomBarIconColor : Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(50.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 8.h),
      child: SvgPicture.asset(
        imagePath,
        colorFilter: isActive
            ? const ColorFilter.mode(Colors.blue, BlendMode.srcIn)
            : const ColorFilter.mode(Palette.hintColor, BlendMode.srcIn),
      ),
    );
  }
}
