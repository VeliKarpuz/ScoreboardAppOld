// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String gameName;
  GameCard(this.gameName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 1),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(),
          title: Text(gameName),
        ),
      ),
    );
  }
}
