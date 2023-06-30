import 'package:flutter/material.dart';

class RutinaFutbolSala extends StatelessWidget {
  const RutinaFutbolSala({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Rutina Futbol Sala"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
