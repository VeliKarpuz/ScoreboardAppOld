import 'package:flutter/material.dart';
import '../game_card.dart';

class Batak extends StatelessWidget {
  const Batak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batak"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/routeTekliBatak");
          },
          child: Column(children: const <Widget>[
            GameCard("Tekli Batak"),
            GameCard("Eşli Batak"),
            GameCard("Gömmeli Batak"),
            GameCard("3,5,8 Batak"),
          ]),
        ),
      ),
    );
  }
}
