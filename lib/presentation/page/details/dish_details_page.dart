import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';
import 'package:sample_upwork/presentation/widgets/category_chips.dart';
import 'package:sample_upwork/presentation/widgets/details_app_bar.dart';
import 'package:sample_upwork/presentation/widgets/dish_counter_toggler.dart';
import 'package:sample_upwork/presentation/widgets/ingredient_card.dart';
import 'package:sample_upwork/presentation/widgets/share_button.dart';

@RoutePage()
class DishDetailsPage extends StatefulWidget {
  const DishDetailsPage({required this.dish, super.key});

  final Dish dish;

  @override
  State<DishDetailsPage> createState() => _DishDetailsPageState();
}

class _DishDetailsPageState extends State<DishDetailsPage> {
  int counter = 0;

  void increaseCounter() => setState(() => counter++);

  void decreaseCounter() => setState(() => counter > 0 ? counter-- : null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: DetailsPageAppBar(
          navigationCallback: () => context.router.navigate(const HomeRoute()),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(widget.dish.imagePath),
                  const ShareButton(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
              child: Text(
                widget.dish.title,
                style: TextStyles.commonPoppins.copyWith(
                  fontSize: 18.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/clock.svg',
                    height: 16.h,
                    width: 16.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 16.w),
                    child: Text(
                      '${widget.dish.cookTime.inMinutes} min',
                      style: TextStyles.commonPoppins,
                    ),
                  ),
                  SvgPicture.asset('assets/svg/fire.svg'),
                  Padding(
                    padding: EdgeInsets.only(left: 6.w),
                    child: Text(
                      '${widget.dish.calories} cal',
                      style: TextStyles.commonPoppins,
                    ),
                  ),
                  const Spacer(),
                  DishCounterToggler(
                    increaseCallback: increaseCounter,
                    decreaseCallback: decreaseCounter,
                    counter: counter,
                  )
                ],
              ),
            ),
            DishCategoryChips(dishCategories: widget.dish.categories),
            Padding(
              padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 16.h),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Palette.universalGrayBorder),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: Text(
                        'Ingredients',
                        style: TextStyles.commonPoppins.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return IngredientCard(
                          key: ValueKey(widget.dish.ingredients[index].id),
                          dish: widget.dish,
                          toggleCheckboxCallback: (value) {
                            setState(() {
                              if (widget.dish.ingredientAvailability
                                  .containsKey(
                                widget.dish.ingredients[index].title,
                              )) {
                                widget.dish.ingredientAvailability.remove(
                                  widget.dish.ingredients[index].title,
                                );
                              } else {
                                widget.dish.ingredientAvailability.addEntries([
                                  MapEntry(
                                    widget.dish.ingredients[index].title,
                                    true,
                                  )
                                ]);
                              }
                            });
                          },
                          index: index,
                        );
                      },
                      itemCount: widget.dish.ingredients.length,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
