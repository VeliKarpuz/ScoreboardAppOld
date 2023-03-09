// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PlayerName extends StatelessWidget {
  final String name;
  PlayerName(this.name);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
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
