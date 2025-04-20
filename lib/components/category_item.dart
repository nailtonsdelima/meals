import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';

// import 'package:meals/screens/categories_meals_screen.dart';
import 'package:meals/Utils/app_routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.CATEGORIES_MEALS,
      arguments: category,
    );
  }

  // ignore: use_key_in_widget_constructors
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.5),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
