import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import 'package:meals/data/dummy_data.dart';
import '../models/category.dart';

// ignore_for_file: use_key_in_widget_constructors
class CategoriesMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          // return Text(categoryMeals[index].title);
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
