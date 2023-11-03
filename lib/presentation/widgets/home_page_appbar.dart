import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.scaffoldBackgroundColor,
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.w),
          child: SvgPicture.asset('assets/svg/chat.svg'),
        ),
      ],
      centerTitle: true,
      title: Text(
        'Favorites',
        style: TextStyles.commonPoppins
            .copyWith(fontWeight: FontWeight.w500, fontSize: 22.sp),
      ),
    );
  }
}
