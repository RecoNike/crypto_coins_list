import 'package:flutter/material.dart';

final mainTheme = ThemeData(
        primarySwatch: Colors.amber,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 29, 29, 29),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)
        ),
        dividerColor: const Color.fromARGB(131, 255, 255, 255),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          bodySmall: TextStyle(
            color: Color.fromARGB(139, 255, 255, 255),
            fontWeight: FontWeight.w700,
            fontSize: 14
          )
        )
      );