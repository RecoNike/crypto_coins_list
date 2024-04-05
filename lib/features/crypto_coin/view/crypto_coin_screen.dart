import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  @override
  void didChangeDependencies() {
    final CryptoCoin args =
        ModalRoute.of(context)?.settings.arguments as CryptoCoin;
    if (args == null) {
      print('You must provide args');
      return;
    }
    // if(args is! String){
    //   print("You must provide String args");
    //   return;
    // }
    coinName = args.name;
    coinPrice = args.priceInUSD.toString();
    super.didChangeDependencies();
  }

  String? coinName;
  String? coinPrice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        title: Text(
          coinName ?? "...",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text(coinPrice ?? "000"),
      ),
    );
  }
}
