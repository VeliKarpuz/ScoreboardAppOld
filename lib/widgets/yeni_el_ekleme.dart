import 'package:flutter/material.dart';

class YeniElEkleme extends StatefulWidget {
  int o1;
  int o2;
  int o3;
  int o4;
  YeniElEkleme({
    super.key,
    required this.o1,
    required this.o2,
    required this.o3,
    required this.o4,
  });
  @override
  State<YeniElEkleme> createState() => _YeniElEklemeState();
}

class _YeniElEklemeState extends State<YeniElEkleme> {
  List<List> scoreList = [];

  decreaseScore(int ox) {
    setState(() {
      if (ox < 0) {
        return;
      }
      widget.o4++;
    });
  }

  void increaseScore(int ox) {
    setState(() {
      if (widget.o1 + widget.o2 + widget.o3 < 13) {
        ox++;
        widget.o4--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o1);
                },
                child: const Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text("Oyuncu1"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(widget.o1.toString()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o1);
                },
                child: const Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o2);
                },
                child: const Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text("Oyuncu2"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("${widget.o2}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o2);
                },
                child: const Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o3);
                },
                child: const Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text("Oyuncu3"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("${widget.o3}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o3);
                },
                child: const Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  // decreaseScore(o4);
                },
                child: const Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: const Text("Oyuncu4"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("${widget.o4}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: const Size(100, 40)),
                onPressed: () {
                  // increaseScore(o4);
                },
                child: const Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: const Size(150, 40)),
          onPressed: () {},
          child: const Text("Ekle"),
        )
      ],
    );
  }
}
