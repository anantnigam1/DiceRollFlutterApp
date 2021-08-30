import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyStatefulApp());
}

class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({Key? key}) : super(key: key);

  @override
  _MyStatefulAppState createState() => _MyStatefulAppState();
}

class _MyStatefulAppState extends State<MyStatefulApp> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Roll the Dice"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: TextButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: (){
                      setState(() {
                        leftDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                  padding: EdgeInsets.all(16),
                ),
              ),
              Expanded(
                child: Container(
                  child: TextButton(
                    child:Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: (){
                      setState(() {
                        rightDiceNumber = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                  padding: EdgeInsets.all(16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

