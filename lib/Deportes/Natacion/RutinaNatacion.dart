import 'package:flutter/material.dart';

class RutinaNatacion extends StatelessWidget {
  const RutinaNatacion({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Rutina Natacion"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
    );
  }
}
