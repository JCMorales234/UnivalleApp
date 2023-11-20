import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Acondicionamiento%20Fisico/RutinaAfisico.dart';

class MenuAfisico extends StatelessWidget {
  const MenuAfisico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: const Text("Acondicionamiento fisico 💪"),
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
                "assets/images/AFisico.jpg",
                width: 2000.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "Estar en buena forma no solo es importante para los deportes, tener un buen estado fisico nos garantiza evitar problemas de salud y nos genera un sentimiento de bienestar importante para poder afrontar todos los dias con una buena actitud",
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
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica para el Acondicionamiento fisico 😊",
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
                "La rutina consta de 3 fases: \n\n Fase 1: Calentamiento  \n - Realizar un estiramiento de brazos, piernas, rodillas, pies y cuello \n - Trotar lentamente 5 minutos \n\n Fase 2: Entrenamiento principal \n - Saltos de tijera 5 series de 50 repeticiones \n - abdominales 5 series de 50 repeticiones \n - Elevamiento de rodillas 5 series de 50 repeticiones \n Flexiones 5 series 10 repeticiones \n Salta la cuerda 5 mins  \n\n  Fase 3: Estiramiento \n - Realizar un estiramiento de brazos, piernas, rodillas, pies y cuello \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios ",
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
                          builder: (context) => const RutinaAFisico()));
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
