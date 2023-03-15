import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/batak.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak.dart';
import './widgets/game_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scoreboard",
      initialRoute: "/",
      routes: {
        '/': (context) => const MyHomePage(),
        '/routeBatak': (context) => const Batak(),
        "/routeTekliBatak": (context) => const TekliBatak(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Scoreboard"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/routeBatak');
            },
            child: Column(
              children: const <Widget>[
                GameCard("Batak"),
                GameCard("Batak"),
                GameCard("Batak"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
