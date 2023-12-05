import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Futbol%20Sala/RutinaFutbolSala.dart';

class MenuFutbolSala extends StatelessWidget {
  const MenuFutbolSala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Fútbol sala ⚽",
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
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento. \n\n Fase 1 Calentamiento: \n- Realizar un estiramiento de brazos, piernas, rodillas y pies  \n- Trotar suavemente 5 minutos  \n\n Fase 2 Entrenamiento Principal: \n- Realiza 3 carreras a máxima velocidad hasta el final de la cancha toma descansos de un minuto entre cada carrera \n- Regatea con el balón entre conos por 5 minutos\n- Flexiones 5 series de 8 repeticiones \n- Realiza dominadas con el balón y cada 4 toques de balón eleva el balón a una buena altura para controlarlo y seguir haciendo las dominadas. Realiza este ejercicio por 3 minutos \n- Sentadillas 5 series de 20 repeticiones \n- Realiza 15 tiros al arco a una distancia en la que te sientas cómodo \n- Abdominales 4 series de 30 repeticiones \n- Realiza 15 tiros al arco con tu pierna menos hábil a una distancia en la que te sientas cómodo\n\n Fase 3: Estiramiento: \n- Trota lentamente 5 minutos \n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\nSi no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
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
                          builder: (context) => const RutinaFutbolSala()));
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
