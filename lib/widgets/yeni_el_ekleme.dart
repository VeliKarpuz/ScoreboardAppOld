// ignore_for_file: prefer_const_constructors,prefer_const_literals_to_create_immutables,

import 'package:flutter/material.dart';

class YeniElEkleme extends StatefulWidget {
  int o1;
  int o2;
  int o3;
  int o4;
  YeniElEkleme({
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
      ox = 5;
      widget.o4++;
    });

    print(ox);
    return (_) {
      ox;
      widget.o4;
    };
  }

  void increaseScore(int ox) {
    if (widget.o1 + widget.o2 + widget.o3 < 13) {
      ox++;
      widget.o4--;
    }
    setState(() {});
    print(ox);
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
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o1);
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Oyuncu1"),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("${widget.o1}"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o1);
                },
                child: Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o2);
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Oyuncu2"),
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
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o2);
                },
                child: Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  decreaseScore(widget.o3);
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Oyuncu3"),
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
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  increaseScore(widget.o3);
                },
                child: Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  // decreaseScore(o4);
                },
                child: Icon(Icons.exposure_minus_1),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Oyuncu4"),
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
                style: OutlinedButton.styleFrom(fixedSize: Size(100, 40)),
                onPressed: () {
                  // increaseScore(o4);
                },
                child: Icon(Icons.plus_one),
              ),
            )
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
          onPressed: () {},
          child: Text("Ekle"),
        )
      ],
    );
  }
}
