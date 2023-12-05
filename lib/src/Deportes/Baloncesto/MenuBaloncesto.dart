import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Baloncesto/RutinaBaloncesto.dart';

class MenuBaloncesto extends StatelessWidget {
  const MenuBaloncesto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Baloncesto 🏀",
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
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento \n\n Fase 1 Calentamiento:\n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies \n\nFase 2 Entrenamiento Principal: \n- Realiza 40 tiros desde las zonas de 3 puntos de la cancha. Alterna cada 10 tiros de posición procurando estar siempre en una zona de 3 puntos \n- Saltos de tijera 5 series 40 repeticiones  \n- Realiza 20 tiros libres desde la línea de tiro libre \n- abdominales 5 series 40 repeticiones Toma descansos de 1 minuto entre cada serie \n- Realiza 30 pases a un compañero (o una pared) simulando una situación de juego en la que das un pase lo suficientemente fuerte para evitar que el pase sea interceptado. \n- Salta la cuerda o trotar a una velocidad moderada alrededor de la cancha durante 10 minutos \n\n Fase 3: Enfriamiento: \n- Lanza tiros al aro desde donde te sientas cómodo durante 5 minutos\n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
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
                          builder: (context) => const RutinaBaloncesto()));
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
