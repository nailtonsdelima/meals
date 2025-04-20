import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'Utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        // parametro abaixo está subtituindo o canvas color do projeto inicial
        scaffoldBackgroundColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        // primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.pink,
          titleTextStyle: TextStyle(
            fontFamily: 'RobotoCondensed',
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
