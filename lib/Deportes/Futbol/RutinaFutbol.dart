import 'package:flutter/material.dart';

class RutinaFutbol extends StatelessWidget {
  const RutinaFutbol({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Rutina Futbol"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
