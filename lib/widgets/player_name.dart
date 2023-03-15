import 'package:flutter/material.dart';

class PlayerName extends StatelessWidget {
  final String name;
  const PlayerName(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(3),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2),
          ),
        ),
        height: 50,
        child: Center(
          child: Text(name),
        ),
      ),
    );
  }
}
