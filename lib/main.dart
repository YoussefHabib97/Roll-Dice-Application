import 'package:flutter/material.dart';

// Widget imports
import 'package:roll_dice_app/widgets/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Application(),
    );
  }
}

class Application extends StatelessWidget {
  const Application({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GradientContainer(
        colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ],
        startAlignment: Alignment.topRight,
        endAlignment: Alignment.centerLeft,
      ),
    );
  }
}
