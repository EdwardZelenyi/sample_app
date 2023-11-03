import 'package:sample_upwork/domain/entity/dish.dart';
import 'package:sample_upwork/domain/entity/ingredient.dart';
import 'package:sample_upwork/gen/assets.gen.dart';

class DishGateway {
  List<Dish> getDishes() {
    return List.from(dishes);
  }
}

final List<Dish> dishes = [
  Dish(
    id: 1,
    title: 'Lotus Leaf Glutinous Rice Lotus Leaf Glutinous Rice',
    cookTime: const Duration(minutes: 46),
    calories: 260,
    categories: ['Daily', 'Salad', 'Breakfast', 'Light food'],
    imagePath: Assets.jpg.mock2.path,
    ingredients: [
      Ingredient(
        id: 1,
        title: 'Sate Ayam',
        destination: 'Lunch',
      ),
      Ingredient(
        id: 2,
        title: 'Bakso',
        destination: 'Sauce',
      ),
      Ingredient(
        id: 3,
        title: 'Nasi padang',
        destination: 'Meat',
      )
    ],
  ),
  Dish(
    imagePath: Assets.jpg.mock3.path,
    id: 2,
    title: 'BBQ Pork Puff',
    cookTime: const Duration(minutes: 46),
    calories: 260,
    categories: ['Daily', 'Salad'],
    ingredients: [
      Ingredient(
        id: 1,
        title: 'Sate Ayam ',
        destination: 'Lunch',
      ),
      Ingredient(
        id: 2,
        title: 'Bakso',
        destination: 'Sauce',
      ),
      Ingredient(
        id: 3,
        title: 'Nasi padang',
        destination: 'Meat',
      )
    ],
  ),
  Dish(
    imagePath: Assets.png.mock4.path,
    id: 3,
    title: 'Lotus Leaf Glutinous Rice Lotus Leaf Glutinous Rice ',
    cookTime: const Duration(minutes: 46),
    calories: 260,
    categories: ['Daily', 'Salad'],
    ingredients: [
      Ingredient(
        id: 1,
        title: 'Sate Ayam ',
        destination: 'Lunch',
      ),
      Ingredient(
        id: 2,
        title: 'Bakso',
        destination: 'Sauce',
      ),
      Ingredient(
        id: 3,
        title: 'Nasi padang',
        destination: 'Meat',
      )
    ],
  ),
  Dish(
    imagePath: Assets.jpg.mock3.path,
    id: 4,
    title: 'Lotus Leaf Glutinous Rice Lotus Leaf Glutinous Rice ',
    cookTime: const Duration(minutes: 46),
    calories: 260,
    categories: ['Daily', 'Salad'],
    ingredients: [
      Ingredient(
        id: 1,
        title: 'Sate Ayam ',
        destination: 'Lunch',
      ),
      Ingredient(
        id: 2,
        title: 'Bakso',
        destination: 'Sauce',
      ),
      Ingredient(
        id: 3,
        title: 'Nasi padang',
        destination: 'Meat',
      )
    ],
  ),
];
