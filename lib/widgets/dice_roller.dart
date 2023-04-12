import 'package:flutter/material.dart';

// Library imports
import 'dart:math';

// Widget imports
import 'package:roll_dice_app/widgets/styled_text.dart';

final Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = randomizer.nextInt(6) + 1;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 256,
        ),
        const SizedBox(
          height: 24,
        ),
        TextButton(
          onPressed: rollDice,
          child: const StyledText(
            text: "Roll Dice",
            color: Colors.white,
            fontSize: 24,
          ),
        )
      ],
    );
  }
}
