import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/gen/assets.gen.dart';

import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DishCooktimeChip extends StatelessWidget {
  const DishCooktimeChip({required this.cookTime, super.key});
  final Duration cookTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18.r)),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 3.h,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5.w),
            child: SvgPicture.asset(
              Assets.svg.clock,
              height: 14.h,
              width: 14.w,
            ),
          ),
          Text(
            '${cookTime.inMinutes} min',
            style: TextStyles.commonPoppins.copyWith(fontSize: 14.sp),
          )
        ],
      ),
    );
  }
}
