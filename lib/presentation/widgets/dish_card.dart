import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/widgets/dish_cooktime_chip.dart';
import 'package:sample_upwork/presentation/widgets/dish_title_container.dart';

class DishCard extends StatelessWidget {
  const DishCard({required this.dish, super.key});
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Material(
        elevation: 1,
        color: Palette.universalGrayBorder,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.8.r),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.25,
                minWidth: MediaQuery.of(context).size.width,
                maxHeight: MediaQuery.of(context).size.height * 0.35,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.8.r),
                child: Image.asset(
                  dish.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IntrinsicWidth(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.h, right: 7.w),
                    child: DishCooktimeChip(
                      cookTime: dish.cookTime,
                    ),
                  ),
                ),
                DishTitleContainer(dish: dish)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
