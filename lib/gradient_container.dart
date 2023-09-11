import 'package:flutter/material.dart';
import 'package:first/dice.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2);
  //initialiazation
  final Color color1;
  final Color color2;
  var activeDiceImage = 'asset/dice2.jpeg';
  void rollDice() {
    activeDiceImage = 'asset/dice1.jpeg';
    print("Changing Image");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [color1, color2],
        ),
      ),
      child: Center(
        child: Dice(),
      ),
    );
  }
}
