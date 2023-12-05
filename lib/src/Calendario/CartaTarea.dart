import 'package:flutter/material.dart';

class CartaTarea extends StatelessWidget {
  const CartaTarea({
    super.key,
    required this.titulo,
    required this.nota,
    required this.fecha,
  });

  final String titulo;
  final String nota;
  final String fecha;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 20,
      child: Row(children: [
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: const Color.fromARGB(255, 153, 14, 14),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "$titulo \n $nota",
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Oswald",
                      ),
                    ),
                  ),
                  Text(
                    fecha,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
