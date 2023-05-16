import 'dart:math';

import 'package:flutter/material.dart';
class diceapp extends StatefulWidget {
  const diceapp({Key? key}) : super(key: key);

  @override
  State<diceapp> createState() => _diceappState();
}

class _diceappState extends State<diceapp> {
  int leftdice1number=2;
  int rightdice2number=1;
  void ChangeDicenumber(){
    setState(() {
      leftdice1number=Random().nextInt(6)+1;
      rightdice2number=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(title: Text('diceapp'),),
      body: Center(
    child: Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
        Expanded(child: TextButton(onPressed: (){ChangeDicenumber();}, child: Image.asset('dice/dice$leftdice1number.jpg'))),
        Expanded(child: TextButton(onPressed: (){ChangeDicenumber();}, child: Image.asset('dice/dice$rightdice2number.jpg'))),
      ],),
      ),
    );
  }
}

