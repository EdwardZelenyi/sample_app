import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class DishCategoryChips extends StatelessWidget {
  const DishCategoryChips({required this.dishCategories, super.key});
  final List<String> dishCategories;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6.w,
      runSpacing: 6.w,
      children: [
        for (final category in dishCategories)
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 6.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30.r)),
              color: Colors.white,
              border: Border.all(color: Palette.universalGrayBorder),
            ),
            child: Text(
              category,
              style: TextStyles.hintPoppins.copyWith(
                color: Palette.textColor,
              ),
            ),
          ),
      ],
    );
  }
}
