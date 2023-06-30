import 'package:flutter/material.dart';

class RutinaAFisico extends StatelessWidget {
  const RutinaAFisico({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Rutina Acondicionamiento Fisico"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
