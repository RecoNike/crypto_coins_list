import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;
  

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      leading: SvgPicture.asset(
        'assets/svg/btc_logo.svg',
         height: 25, width: 25
        ),
      title: Text(
        coinName,
        style: theme.textTheme.bodyMedium
        ),
      subtitle: Text(
        "0000",
        style: theme.textTheme.bodySmall,
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          ),
          onTap: (){
            Navigator.of(context).pushNamed('/coin',
            arguments: coinName);
          },
    );
  }
}