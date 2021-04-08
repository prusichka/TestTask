import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Random Colors',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      body: InkWell(
        onTap: () {
          setState(() {
            color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        child: Container(
          alignment: Alignment.center,
          color: color,
          child: Container(
              padding: const EdgeInsets.all(100),
              decoration: BoxDecoration(
                border: Border.all(),
                color:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                shape: BoxShape.circle,
              ),
              child: Text(
                'Hey Where !',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                ),
              )),
        ),
      ),
    );
  }
}
