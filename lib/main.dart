import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( DiceStage());
}

class DiceStage extends StatefulWidget {
  const DiceStage({Key? key}) : super(key: key);

  @override
  State<DiceStage> createState() => _DiceStageState();
}

int LeftDice = 1;
int RightDice = 1;

void ChangeDices(){
    LeftDice = Random().nextInt(6) + 1; //1-6
    RightDice = Random().nextInt(6) + 1; //1-6
}

class _DiceStageState extends State<DiceStage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: (){
                      setState((){
                        ChangeDices();
                      });
                    }, //(input value), {actionwhenPress}
                    child: Image.asset('images/dice$LeftDice.png')),
              ),
              Expanded(
                flex: 1, //default
                child: TextButton(
                    onPressed: (){
                      setState((){
                        ChangeDices();
                      });
                    },
                    child: Image.asset('images/dice$RightDice.png')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

