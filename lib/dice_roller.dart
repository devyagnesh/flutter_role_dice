import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/dice-1.png";
  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/dice-$diceRoll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(115, 19, 120, 252),
              textStyle: const TextStyle(fontSize: 20)),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
