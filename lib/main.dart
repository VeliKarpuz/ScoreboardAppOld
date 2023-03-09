// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/batak/batak.dart';
import 'package:scoreboard_app/widgets/batak/tekli_batak.dart';
import './widgets/game_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scoreboard",
      initialRoute: "routeTekliBatak",
      routes: {
        '/': (context) => MyHomePage(),
        'routeBatak': (context) => Batak(),
        "routeTekliBatak": (context) => TekliBatak(),
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
          padding: EdgeInsets.all(5),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: <Widget>[
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
