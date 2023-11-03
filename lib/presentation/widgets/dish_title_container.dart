import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/domain/entity/dish.dart';

import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DishTitleContainer extends StatelessWidget {
  const DishTitleContainer({required this.dish, super.key});
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 74.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(18.8.r),
          bottomRight: Radius.circular(18.8.r),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(12.w),
      width: MediaQuery.of(context).size.width,
      child: Text(
        dish.title,
        style: TextStyles.commonPoppins.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          height: 1.38,
        ),
      ),
    );
  }
}
