// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../game_card.dart';

class Batak extends StatelessWidget {
  const Batak({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Batak"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(children: <Widget>[
          GameCard("Eşli Batak"),
        ]),
      ),
    );
  }
}
