import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Dice extends StatefulWidget {
  const Dice({super.key});
  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/dice$currentDiceRoll.png',
          width: 100,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //  top: 40,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 32,
                )),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
