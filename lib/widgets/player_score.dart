import 'package:flutter/material.dart';

class PlayerScore extends StatelessWidget {
  final String score1;
  final String score2;
  final String score3;
  final String score4;
  const PlayerScore(
      {super.key,
      required this.score1,
      required this.score2,
      required this.score3,
      required this.score4});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: 20,
                child: Center(child: Text(score1)),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
                child: Center(child: Text(score2)),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
                child: Center(child: Text(score3)),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 20,
                child: Center(child: Text(score4)),
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
          endIndent: 5,
          indent: 5,
          color: Colors.grey,
        )
      ],
    );
  }
}
