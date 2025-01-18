import 'package:flutter/material.dart';
import 'package:shoppingapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 1, 212, 1.0),),
            primaryColor: const Color.fromRGBO(238, 6, 255, 0.6627450980392157),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(100),
            ),
          ),
          prefixIconColor: Colors.black,
        ),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
      home: const HomePage(),
    );
  }
}
