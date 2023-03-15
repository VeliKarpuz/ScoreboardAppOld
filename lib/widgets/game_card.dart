import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String gameName;
  const GameCard(this.gameName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 1),
      child: Card(
        child: ListTile(
          leading: const CircleAvatar(),
          title: Text(gameName),
        ),
      ),
    );
  }
}
