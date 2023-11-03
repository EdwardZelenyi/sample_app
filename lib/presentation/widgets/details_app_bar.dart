import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DetailsPageAppBar extends StatelessWidget {
  const DetailsPageAppBar({super.key, required this.navigationCallback});
  final VoidCallback navigationCallback;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.scaffoldBackgroundColor,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: navigationCallback,
            child: SvgPicture.asset('assets/svg/arrow-left.svg'),
          ),
          Text(
            'Recipe details',
            style: TextStyles.commonPoppins.copyWith(
              color: Palette.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 22.sp,
            ),
          ),
          SizedBox(
            width: 24.h,
            height: 24.h,
          )
        ],
      ),
    );
  }
}
