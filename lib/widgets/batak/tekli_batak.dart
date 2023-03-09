// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/player_name.dart';
import '../player_score.dart';

class TekliBatak extends StatelessWidget {
  final List<String> players = [
    "Oyuncu 1",
    "Oyuncu 2",
    "Oyuncu 3",
    "Oyuncu 4",
  ];

  final List<int> player1Scores = [1, 2, 3];
  final List<int> player2Scores = [2, 2, 3];
  final List<int> player3Scores = [3, 2, 3];
  final List<int> player4Scores = [4, 2, 3];
  final i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tekli Batak"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      PlayerName(players[0]),
                      PlayerName(players[1]),
                      PlayerName(players[2]),
                      PlayerName(players[3]),
                    ],
                  ),
                  PlayerScore(
                    score1: player1Scores[i].toString(),
                    score2: player2Scores[i].toString(),
                    score3: player3Scores[i].toString(),
                    score4: player4Scores[i].toString(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ekle"),
          BottomNavigationBarItem(icon: Icon(Icons.refresh), label: "Yeni Oyun")
        ],
        onTap: (_) {},
      ),
    );
  }
}
