import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
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
      ),
      home: const MyHomePage(title: 'Crypto currencies list'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 29, 29),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/btc_logo.svg',
             height: 25, width: 25
            ),
          title: Text(
            'Bitcoin',
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
        )
        ),
    );
  }
}
