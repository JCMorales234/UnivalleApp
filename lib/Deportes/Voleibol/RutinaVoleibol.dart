import 'package:flutter/material.dart';

class RutinaVoleibol extends StatelessWidget {
  const RutinaVoleibol({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Rutina Voleibol"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
