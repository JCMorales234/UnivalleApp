import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/Calendario/Formulario.dart';

import 'Boton_Add.dart';

class implementacionTarea extends StatelessWidget {
  const implementacionTarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMMd().format(DateTime.now()),
                    style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: "Oswald",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
                const Text("Hoy",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Boton_Add(
              label: "Añadir Tarea",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Formulario()));
              })
        ],
      ),
    );
  }
}
