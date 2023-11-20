import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Natacion/RutinaNatacion.dart';

class MenuNatacion extends StatelessWidget {
  const MenuNatacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: const Text("Natación 🏊"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(122, 196, 18, 18),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Natacion.jpeg",
                width: 2000.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "La natación dentro del marco de la Educación Física y el Deporte constituye una fuente muy valiosa para lograr el desarrollo integral del ser humano. Por esta razón los especialistas buscan la forma más eficiente de lograr que los participantes dominen la técnica que se desarrolla en un medio diferente al del habitual del hombre. Por lo que surge la formación básica con sus 5 cualidades, las cuales son: Sumersión, Saltos, Respiración, Flotación, Locomoción.",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica de entrenamiento de Natación 😊",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "La rutina es la siguiente: \n\n Calentamiento  \n - 200 metros en estilo libre a un ritmo moderado para empezar a estirar los músculos. \n\n Entrenamiento principal \n - Brazos de crol (sujetando un pull-over entre las piernas): 3 series de 100 metros. \n - Piernas de crol (con brazos en tabla): 3 series de 100 metros \n - Piernas de crol y un brazo (se mantiene el brazo derecho extendido): 3 series de 100 metros \n - Piernas de crol y un brazo (se mantiene el brazo izquierdo extendido): 3 series de 100 metros. \n - Crol completo: 4 series de 100 metros a ritmo alto. \n	1 serie de 200 metros en estilo libre y a ritmo lento para estirar los músculos. \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RutinaNatacion()));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.white)))),
                child: const Text(
                  "Ejercicios",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
