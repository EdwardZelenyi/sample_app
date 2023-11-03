import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    required this.index,
    required this.toggleCheckboxCallback,
    required this.dish,
    required this.selectedIngredients,
    super.key,
  });
  final Dish dish;
  final int index;
  final void Function({bool? value}) toggleCheckboxCallback;
  final List<String> selectedIngredients;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          width: 24.w,
          height: 24.h,
          child: Center(
            child: Text(
              '${index + 1}',
              style: TextStyles.commonPoppins.copyWith(
                color: Palette.hintColor,
              ),
            ),
          ),
        ),
        Checkbox(
          side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(
              color: Palette.textColor,
              width: 1.5.w,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          fillColor: const MaterialStatePropertyAll(Palette.textColor),
          value: selectedIngredients.contains(dish.ingredients[index].title),
          onChanged: (value) => toggleCheckboxCallback(value: value),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dish.ingredients[index].title,
              style: TextStyles.commonPoppins,
            ),
            Text(
              'For ${dish.ingredients[index].destination}',
              style: TextStyles.hintPoppins,
            )
          ],
        )
      ],
    );
  }
}
