import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/TimeService.dart';
import 'package:provider/provider.dart';

class Progress_Widget extends StatelessWidget {
  const Progress_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: const TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            ),
            Text(
              "${provider.goal}/12",
              style: const TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Ronda",
              style: TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            ),
            Text(
              "Meta",
              style: TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            )
          ],
        )
      ],
    );
  }
}
