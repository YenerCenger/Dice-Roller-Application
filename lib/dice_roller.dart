import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 4;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(6) + 1;
      currentDiceRoll2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            SizedBox(width: 50),
            Image.asset(
              'assets/images/dice-$currentDiceRoll1.png',
              width: 150,
            ),
            Image.asset(
              'assets/images/dice-$currentDiceRoll2.png',
              width: 150,
            )
          ],
        ),
        const SizedBox(height: 20),
        FilledButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: const Color.fromARGB(255, 228, 219, 82),
                textStyle: TextStyle(
                  fontSize: 28,
                )),
            child: Text('Roll Dice')),
      ],
    );
  }
}
