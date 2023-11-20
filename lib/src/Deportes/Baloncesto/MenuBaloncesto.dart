import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Baloncesto/RutinaBaloncesto.dart';

class MenuBaloncesto extends StatelessWidget {
  const MenuBaloncesto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: const Text("Baloncesto 🏀"),
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
                "assets/images/Basquet1.jpeg",
                width: 2000.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "Para jugar baloncesto se requiere de mucha resistencia y fuerza asi que tener las aptitudes fisicas es fundamental para aguantar un partido de baloncesto, Pero ademas es importante tener una buena tecnica y entender los fundamentos del juego.",
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
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica de entrenamiento de baloncesto 😊",
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
                "La rutina consta de 3 fases: \n\n Fase 1: Calentamiento \n - Trotar Lentamente por la cancha durante 5 mins \n - Realizar un estiramiento de brazos, piernas, espalda y rodillas \n - 3  ''Suicidios'' \n\n Fase 2: Entrenamiento Principal: \n - dribla el balón, tira a canasta y realiza diversos ejercicios. Esto realmente no tiene una estructura, es simplemente entrar en confianza con la pelota y sentirte despejado física y mentalmente. \n - 30 tiros libres desde diferentes posiciones \n - Dribleo entre conos durante 10 minutos \n - Pases contra la pared 10 minutos \n - Salta la cuerda 10 minutos \n\n Fase 3: Enfriamiento \n - Lanza tiros libres 5 mins \n -Trota lentamente 5 mins \n -Estiramiento de brazos, piernas, espalda y rodillas \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios ",
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
                          builder: (context) => const RutinaBaloncesto()));
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
