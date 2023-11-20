import 'package:flutter/material.dart';

class RutinaFutbol extends StatelessWidget {
  const RutinaFutbol({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: const Text("Rutina Futbol"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
