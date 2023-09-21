// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            backgroundColor: Colors.indigo[800],
            title: Text(
              'تطابق الصور',
            ),
          ),
          body: ImagePage()),
    );
  }
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftNumber = 1;
  int rightNumber = 1;
  void ChangeNumber() {
    setState(() {
      leftNumber = Random().nextInt(8) + 1;
      rightNumber = Random().nextInt(8) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            leftNumber == rightNumber ? 'مبروك لقد فزت' : 'حاول مره اخري',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                      onPressed: () {
                        ChangeNumber();
                      },
                      child: Image.asset('images/image-$leftNumber.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: TextButton(
                      onPressed: () {
                        ChangeNumber();
                      },
                      child: Image.asset('images/image-$rightNumber.png'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
