import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Futbol/RutinaFutbol.dart';

class MenuFutbol extends StatelessWidget {
  const MenuFutbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Fútbol ⚽",
          style: TextStyle(
            fontSize: 28.0,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Oswald",
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 14, 14),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento. \n\n Fase 1 Calentamiento: \n- Realizar un estiramiento de brazos, piernas, rodillas y pies  \n- Trotar suavemente por 5 minutos  \n\nFase 2 Entrenamiento Principal: \n- Flexiones 5 series de 10 repeticiones \n- Realiza 10 tiros desde el punto penal \n- Sentadillas 5 series de 25 repeticiones \n- Realiza 40 tiros separados en 10 tiros desde diferentes posiciones desde fuera del área \n- Abdominales 5 series de 25 repeticiones\n- Regatea con el balón entre conos por 5 minutos \n-  Realiza 3 carreras a máxima velocidad hasta la mitad de la cancha toma un descanso de 3 minutos entre cada carrera \n\nFase 3: Enfriamiento: \n- Trota lentamente 5 minutos \n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 0, 0, 0),
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
                          builder: (context) => const RutinaFutbol()));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 153, 14, 14),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: const BorderSide(
                              color: const Color.fromARGB(255, 153, 14, 14),
                            )))),
                child: const Text(
                  "Ver guía",
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
