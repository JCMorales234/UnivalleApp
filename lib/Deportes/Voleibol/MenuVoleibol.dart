import 'package:flutter/material.dart';
import 'package:myapp/Deportes/Voleibol/RutinaVoleibol.dart';

class MenuVoleibol extends StatelessWidget {
  const MenuVoleibol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Voleibol 🏐"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/Voleibol.jpg",
                width: 2000.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              Text(
                "El voleibol es un deporte de equipo en el cual es clave realizar los 3 toques disponibles en cada jugada para generar un ataque efectivo al equipo rival por esto es importante que los jugadores tengan una muy buena tecnica que les permita dar pases precisos para completar estos 3 toques. Pero ademas es importante tener un buen estado fisico, el salto y la velocidad son factores claves en este deporte tanto para atacar como para defender.",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              Text(
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica de entrenamiento de Voleibol 😊",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              Text(
                "La rutina consta de 5 fases: \n\n Fase 1: Calentamiento  \n - Realizar un estiramiento de brazos, piernas, rodillas, pies y cuello \n - Trotar lentamente 10 minutos \n\n Fase 2: Preparación fisica: \n -Desplazamientos laterales 10 mins \n - Flexiones 5 series de 8 repeticiones \n - Sentadillas 5 series de 30 repeticiones \n\n  Fase 3: Preparación tecnica \n - Practica tu tecnica de Voleo contra la pared 10 minutos \n - Practica tu tecnica de antebrazo contra la pared 10 mins  \n\n  Fase 4: Entrenamiento de remate y bloqueo \n- Practica los pasos y tecnica de remate sin balon 10 mins \n - Practica los pasos y tecnica de bloqueo 10 mins \n\n Fase 5: Estiramiento \n - Trota suavemente por 5 mins \n - Realizar un estiramiento de brazos, piernas, rodillas, pies y cuello  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RutinaVoleibol()));
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.white)))),
                child: Text(
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
