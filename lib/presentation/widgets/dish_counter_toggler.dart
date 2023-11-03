import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/gen/assets.gen.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DishCounterToggler extends StatelessWidget {
  const DishCounterToggler({
    required this.increaseCallback,
    required this.decreaseCallback,
    required this.counter,
    super.key,
  });
  final VoidCallback increaseCallback;
  final VoidCallback decreaseCallback;
  final int counter;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 2.w),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Palette.universalGrayBorder,
          width: 2.w,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.r)),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: decreaseCallback,
            child: ColoredBox(
              color: Colors.transparent,
              child: SvgPicture.asset(Assets.svg.minus),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              counter.toString(),
              overflow: TextOverflow.ellipsis,
              style: TextStyles.commonPoppins,
            ),
          ),
          GestureDetector(
            onDoubleTap: increaseCallback,
            child: ColoredBox(
              color: Colors.transparent,
              child: SvgPicture.asset(Assets.svg.plus),
            ),
          ),
        ],
      ),
    );
  }
}
