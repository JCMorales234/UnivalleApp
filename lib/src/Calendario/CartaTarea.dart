import 'package:flutter/material.dart';

class CartaTarea extends StatelessWidget {
  const CartaTarea(
      {super.key,
      required this.titulo,
      required this.nota,
      required this.fecha,
      required this.horainicio,
      required this.horafin});

  final String titulo;
  final String nota;
  final String fecha;
  final String horainicio;
  final String horafin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 20,
      child: Row(children: [
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: const Color.fromARGB(255, 240, 75, 75),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      nota,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Oswald",
                      ),
                    ),
                  ),
                  Text(
                    "$fecha \n $horainicio \n $horafin",
                    style: const TextStyle(
                      fontSize: 15.0,
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
