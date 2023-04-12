import 'package:flutter/material.dart';

// Widget imports
import 'package:roll_dice_app/widgets/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  final Alignment startAlignment;
  final Alignment endAlignment;

  const GradientContainer({
    super.key,
    required this.colors,
    required this.startAlignment,
    required this.endAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
