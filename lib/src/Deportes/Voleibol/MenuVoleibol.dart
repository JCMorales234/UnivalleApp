import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Voleibol/RutinaVoleibol.dart';

class MenuVoleibol extends StatelessWidget {
  const MenuVoleibol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Voleibol 🏐",
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
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento. \n\n Fase 1 Calentamiento: \n- Realizar ejercicios de estiramiento de brazos, piernas, rodillas, pies y cuello\n\n Fase 2 Entrenamiento Principal: \n- Realiza desplazamientos laterales a lo ancho de la cancha durante 5 minutos \n- Flexiones 5 series de 8 repeticiones \n- Con un compañero (o una pared) realiza pases con la técnica de dedos durante 10 minutos\n- Sentadillas 5 series de 30 repeticiones \n - Con un compañero (o una pared) realiza pases con la técnica de voleo durante 10 minutos \n- Abdominales 5 series de 30 repeticiones \n- Practica tu juego de pies para realizar un bloqueo realizando los pasos previos al salto de bloqueo y saltando luego lo mas alto posible de manera vertical. Realiza este ejercicio por 5 minutos \n-	En un espacio libre practica tu técnica de remate realizando los 3 pasos técnicos para el remate y luego saltando lo mas alto posible. Realiza este ejercicio por 5 minutos\n\n Fase 3: Enfriamiento:\n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
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
                          builder: (context) => const RutinaVoleibol()));
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
