import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Futbol%20Sala/RutinaFutbolSala.dart';

class MenuFutbolSala extends StatelessWidget {
  const MenuFutbolSala({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: const Text("Futbol Sala ⚽"),
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
                "assets/images/Futbol_Sala.jpg",
                width: 2000.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              const Text(
                "El fútbol sala es la versión reducida del fútbol que actualmente está arrasando en el mundo. Ahora reconocido oficialmente por la FIFA y la UEFA, su ritmo rápido y a menudo frenético requiere un conjunto de atributos y habilidades de fútbol sala ligeramente diferentes a las del fútbol de 11 jugadores.",
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
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica de entrenamiento de Futbol sala 😊",
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
                "La rutina consta de 4 fases: \n\n Fase 1: Calentamiento  \n - Realizar un estiramiento de brazos, piernas, rodillas y pies \n\n Fase 2: Preparación fisica: \n -Trotar realizando cambios de ritmo por 10 minutos \n - Flexiones 5 series de 8 repeticiones \n - Sentadillas 5 series de 20 repeticiones \n\n  Fase 3: Trabajo tecnico \n - Regatea con el balon entre conos por 5 minutos \n - Realiza pases a la pared apuntando siempre al mismo punto y mientras el balon vuelve a ti realiza elevacion de rodillas 5 mins \n\n  Fase 3: Entrenamiento de tiro y pase \n\n- Realiza tiros libres desde diferentes posiciones hasta que te sientas comodo con tu golpeo \n -	Realiza cinco tiros al arco intentado apuntar uno a cada esquina del arco y un tiro final al centro del arco repitelo hasta que puedas conseguir al menos 3 tiros en el blanco \n -	Utiliza dos conos e intenta dar un pase por el medio de los dos conos realiza esto con los conos a una distancia corta, media y larga de los conos para practicar tu precisión intenta mantener una buena velocidad en cada pase ya que la idea es simular un pase dentro del juego. realiza 5 series de pases a una distancia corta, media y larga \n\n Fase 4: Estiramiento \n - Trota suavemente por 5 mins \n - Realizar un estiramiento de brazos, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios ",
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
                          builder: (context) => const RutinaFutbolSala()));
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
