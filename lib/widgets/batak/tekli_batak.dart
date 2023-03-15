import 'package:flutter/material.dart';
import 'package:scoreboard_app/widgets/player_name.dart';
import '../player_score.dart';
import '../yeni_el_ekleme.dart';

class TekliBatak extends StatefulWidget {
  const TekliBatak({super.key});

  @override
  State<TekliBatak> createState() => _TekliBatakState();
}

class _TekliBatakState extends State<TekliBatak> {
  final List<String> players = ["Oyuncu 1", "Oyuncu 2", "Oyuncu 3", "Oyuncu 4"];

  final List<int> player1Scores = [1, 2, 3];

  final List<int> player2Scores = [2, 2, 3];

  final List<int> player3Scores = [3, 2, 3];

  final List<int> player4Scores = [4, 2, 3];

  final i = 0;

  void addNewGame({
    required int player1Score,
    required int player2Score,
    required int player3Score,
    required int player4Score,
  }) {
    setState(() {
      player1Scores.add(player1Score);
      player2Scores.add(player2Score);
      player3Scores.add(player3Score);
      player4Scores.add(player4Score);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tekli Batak"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Ekle"),
          BottomNavigationBarItem(icon: Icon(Icons.refresh), label: "Yeni Oyun")
        ],
        onTap: (_) {
          showModalBottomSheet(
              context: context,
              builder: (context) => YeniElEkleme(o1: 5, o2: 1, o3: 3, o4: 13));
        },
      ),
    );
  }
}
