import 'package:flutter/material.dart';

class Boton_Add extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const Boton_Add({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 120,
          height: 60,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 153, 14, 14)),
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: "Oswald",
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
