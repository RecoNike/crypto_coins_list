import 'package:crypto_coins_list/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:crypto_coins_list/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

import '../widgets/crypto_coin_tile.dart';


class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  List<CryptoCoin> ?_cryptoCoinsList;

  @override
  void initState() {
    _initCryptoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 29, 29, 29),
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null)
       ? const Center(
        child: CircularProgressIndicator(),
       ) :
       ListView.separated(
        itemCount: _cryptoCoinsList!.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index){
        final coin = _cryptoCoinsList![index];
        return CryptoCoinTile(coin: coin);
        }
        ),
    );
  }

Future <void> _initCryptoList()
  async {
          
            _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
            setState(() {
              
            });
}

}

