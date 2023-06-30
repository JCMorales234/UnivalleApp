import 'package:flutter/material.dart';
import 'package:myapp/Deportes/Futbol%20Sala/RutinaFutbolSala.dart';
import 'package:myapp/Deportes/Futbol/RutinaFutbol.dart';

class MenuFutbol extends StatelessWidget {
  const MenuFutbol({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Futbol ⚽"),
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
                "images/Futbol.jpg",
                width: 2000.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              Text(
                "El fútbol es el deporte mas popular del mundo. Solo necesitas un balon y lo puedes jugar en cualquier lugar, pero para jugarlo a un buen nivel se requiere no solo de un buen estado fisico si no tambien de una tecnica con el balon y inteligencia sobre el juego que te hagan destacar sobre los demas jugadores ",
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
                "Teniendo en cuenta todo lo mencionado anteriormente he preparado una rutina basica de entrenamiento de Futbol 😊",
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
                "La rutina consta de 3 fases: \n\n Fase 1: Calentamiento  \n - Realizar un estiramiento de brazos, piernas, rodillas y pies \n - Trotar suavemente 10 minutos \n\n Fase 2: Preparación fisica: \n - Flexiones 5 series de 10 repeticiones \n - Sentadillas 5 series de 25 repeticiones \n - Abdominales 5 series de 25 repeticiones \n -	Pasos de escalera: Pondrás la pelota delante de ti, mientras colocas tu pie encima de la pelota. Después, mueve tu pie abajo, alternando rápido tus pies como si estuvieras subiendo escaleras. 5 mins \n\n  Fase 3: Trabajo tecnico \n - Regatea con el balon entre conos por 5 minutos \n - Realiza pases a la pared apuntando siempre al mismo punto y mientras el balon vuelve a ti realiza elevacion de rodillas 5 mins \n\n  Fase 3: Entrenamiento de control de balon \n\n - Pases de pared: Este ejercicio requiere estar de pie a unos tres metros de la pared. Para empezar, lanza el balón contra la pared haciendo controles de balón con tus pies, devolviéndolo continuamente hasta que no puedas controlarlo más. Realiza esto por 10 mins \n -	Repite el ejercicio anterior usando solo cabezazos \n -	Push-Pull: Pondrás tu pie en el balón y lo moverás desde tu dedo del pie hasta el talón y de nuevo al dedo del pie cambiando de pie rápidamente. 5 mins  \n\n Fase 4: Estiramiento \n - Trota suavemente por 5 mins \n - Realizar un estiramiento de brazos, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejerccios ",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RutinaFutbol()));
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
