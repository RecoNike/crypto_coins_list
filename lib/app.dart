import 'package:crypto_coins_list/features/crypto_coins_list/crypto_list.dart';
import 'package:crypto_coins_list/router/router.dart';
import 'package:crypto_coins_list/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme,
      routes: routes,
      home: const CryptoListScreen(title: 'Crypto currencies list'),
    );
  }
}