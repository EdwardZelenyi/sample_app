import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';
import 'package:sample_upwork/presentation/theme/palette.dart';
import 'package:sample_upwork/presentation/theme/text_styles.dart';
import 'package:sample_upwork/presentation/widgets/details_app_bar.dart';
import 'package:sample_upwork/presentation/widgets/dish_additional_info.dart';
import 'package:sample_upwork/presentation/widgets/dish_category_chips.dart';
import 'package:sample_upwork/presentation/widgets/dish_details_image.dart';
import 'package:sample_upwork/presentation/widgets/ingredient_card.dart';

@RoutePage()
class DishDetailsPage extends StatefulWidget {
  const DishDetailsPage({required this.dish, super.key});

  final Dish dish;

  @override
  State<DishDetailsPage> createState() => _DishDetailsPageState();
}

class _DishDetailsPageState extends State<DishDetailsPage> {
  int _counter = 0;

  void increaseCounter() => setState(() => _counter++);

  void decreaseCounter() => setState(() => _counter > 0 ? _counter-- : null);

  Dish get dish => widget.dish;

  final List<String> _selectedIngredients = [];

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
            DishDetailsImageContainer(dishImagePath: dish.imagePath),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
              child: Text(
                dish.title,
                style: TextStyles.commonPoppins.copyWith(
                  fontSize: 18.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.w),
              child: DishAdditionalInfo(
                counter: _counter,
                increaseCallback: increaseCounter,
                decreaseCallback: decreaseCounter,
                dish: dish,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: DishCategoryChips(dishCategories: dish.categories),
            ),
            _buildListView()
          ],
        ),
      ),
    );
  }

  Widget _buildListView() {
    return Padding(
      padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 16.h),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Palette.universalGrayBorder),
          borderRadius: BorderRadius.all(
            Radius.circular(20.r),
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
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const Divider();
              },
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return IngredientCard(
                  selectedIngredients: _selectedIngredients,
                  key: ValueKey(dish.ingredients[index].id),
                  dish: dish,
                  toggleCheckboxCallback: ({value}) {
                    setState(() {
                      if (_selectedIngredients.contains(
                        dish.ingredients[index].title,
                      )) {
                        _selectedIngredients.remove(
                          dish.ingredients[index].title,
                        );
                      } else {
                        _selectedIngredients.add(
                          dish.ingredients[index].title,
                        );
                      }
                    });
                  },
                  index: index,
                );
              },
              itemCount: dish.ingredients.length,
            ),
          ],
        ),
      ),
    );
  }
}
