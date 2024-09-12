import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeImage = 'assets/images/dice-1.png';

  void rollDice() {
    num currentDiceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'assets/images/dice-$currentDiceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeImage,
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(150, 50),
              padding: const EdgeInsets.all(10)),
          onPressed: rollDice,
          child: const Text(
            "Roll",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
