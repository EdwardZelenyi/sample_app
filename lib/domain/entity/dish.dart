import 'package:sample_upwork/domain/entity/ingredient.dart';

class Dish {
  Dish({
    required this.id,
    required this.title,
    required this.cookTime,
    required this.calories,
    required this.categories,
    required this.imagePath,
    required this.ingredients,
  });

  final int id;
  final String title;
  final Duration cookTime;
  final int calories;
  final String imagePath;
  final List<Ingredient> ingredients;
  final List<String> categories;
}
