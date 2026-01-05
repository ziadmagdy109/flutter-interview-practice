import 'dart:developer';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Color> myColors = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
    Colors.cyan,
    Colors.lime,
  ];

  dynamic getRandomColor() {
    myColors.shuffle();
    return myColors.first;
  }

  dynamic getRandomColor2() {
    myColors.shuffle();
    return myColors.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Box1(color1: getRandomColor(), color11: getRandomColor2()),
              Box2(color2: getRandomColor(), color22: getRandomColor2()),
            ],
          ),
          SizedBox(height: 24),
          Box3(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.change_circle),
      ),
    );
  }
}

class Box1 extends StatelessWidget {
  const Box1({super.key, required this.color1, required this.color11});
  final Color color1;
  final Color color11;
  @override
  Widget build(BuildContext context) {
    log("Build Box 1");
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: color1,
        border: Border.all(color: color11, width: 5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class Box2 extends StatelessWidget {
  const Box2({super.key, required this.color2, required this.color22});
  final Color color2;
  final Color color22;
  @override
  Widget build(BuildContext context) {
    log("Build Box 1");
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: color2,
        border: Border.all(color: color22, width: 5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class Box3 extends StatelessWidget {
  const Box3({super.key});

  @override
  Widget build(BuildContext context) {
    log("Build Box3");
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.blue, width: 5),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
