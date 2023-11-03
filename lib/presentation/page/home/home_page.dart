import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_upwork/data/gateway/dish_gateway.dart';
import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/presentation/router/app_router.dart';

import 'package:sample_upwork/presentation/widgets/custom_search_field.dart';
import 'package:sample_upwork/presentation/widgets/dish_card.dart';
import 'package:sample_upwork/presentation/widgets/home_page_appbar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _gateway = DishGateway();
  final _controller = TextEditingController();
  List<Dish> _dishes = [];

  @override
  void initState() {
    _dishes = _gateway.getDishes();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _searchDishes(String query) {
    setState(() {
      _dishes = _gateway
          .getDishes()
          .where(
            (dish) => dish.title.toLowerCase().contains(query.toLowerCase()),
          )
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: HomePageAppBar(),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 25.h,
                top: 20.h,
                left: 20.w,
                right: 20.w,
              ),
              child: CustomSearchField(
                searchCallback: _searchDishes,
                controller: _controller,
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final dish = _dishes[index];
                return GestureDetector(
                  onTap: () =>
                      context.router.navigate(DishDetailsRoute(dish: dish)),
                  child: DishCard(
                    dish: dish,
                    key: ValueKey(dish.id),
                  ),
                );
              },
              itemCount: _dishes.length,
            ),
          ],
        ),
      ),
    );
  }
}
