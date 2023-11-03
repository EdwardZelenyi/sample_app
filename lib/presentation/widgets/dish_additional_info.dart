import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/gen/assets.gen.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';
import 'package:sample_upwork/presentation/widgets/dish_counter_toggler.dart';

class DishAdditionalInfo extends StatelessWidget {
  const DishAdditionalInfo({
    required this.counter,
    required this.increaseCallback,
    required this.decreaseCallback,
    required this.dish,
    super.key,
  });
  final int counter;
  final VoidCallback increaseCallback;
  final VoidCallback decreaseCallback;
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svg.clock,
          height: 16.h,
          width: 16.w,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w, right: 16.w),
          child: Text(
            '${dish.cookTime.inMinutes} min',
            style: TextStyles.commonPoppins,
          ),
        ),
        SvgPicture.asset(Assets.svg.fire),
        Padding(
          padding: EdgeInsets.only(left: 6.w),
          child: Text(
            '${dish.calories} cal',
            style: TextStyles.commonPoppins,
          ),
        ),
        const Spacer(),
        DishCounterToggler(
          increaseCallback: increaseCallback,
          decreaseCallback: decreaseCallback,
          counter: counter,
        )
      ],
    );
  }
}
