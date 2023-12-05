import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Tenis%20de%20mesa/Rutinapingpong.dart';

class MenuPingPong extends StatelessWidget {
  const MenuPingPong({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Tenis de mesa 🏓",
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
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento.\n\n Fase 1 Calentamiento: \n- Realizar un estiramiento de brazos, muñecas, piernas, rodillas y pies  \n- Trotar en la misma posición por 1 minuto 2 series \n- elevamiento de rodillas 1 minuto 2 series\n\n Fase 2 Entrenamiento Principal: \n- Realiza desplazamientos laterales cortos durante 2 minutos 2 series \n- Realizar saltos de títere durante 1 minuto 2 series \n- Lanza la pelota a un compañero (o una pared) y atrapa de vuelta la pelota mientras realizas desplazamientos laterales cortos 2 minutos 2 series \n- Mientras miras la bola haz rebotar la misma en tu raqueta de forma que siempre tengas en tu control la bola. 2 minuto 2 series \n- Sin mirar la bola haz rebotar la misma en tu raqueta de forma que siempre tengas en tu control la bola. 1 minuto 2 series \n- Mientras miras la bola haz rebotar la misma en tu raqueta cambiando la cara de tu raqueta en cada rebote de forma que siempre tengas en tu control la bola. 2 minuto 2 series \n- Sin mirar la bola haz rebotar la misma en tu raqueta cambiando la cara de tu raqueta en cada rebote de forma que siempre tengas en tu control la bola. 1 minuto 2 series \n- Realiza sentadillas y al mismo tiempo debes rebotar la pelota en tu raqueta manteniendo siempre el control. 1 minuto 2 series \n- Camina lentamente mientras al mismo tiempo haces rebotar la pelota en tu raqueta. 1 minuto 2 series \n- Camina lentamente mientras al mismo tiempo haces rebotar la pelota en tu raqueta y por cada rebota cambia la cara con la que golpeas la pelota. 1 minuto 2 series   \n\n Fase 3: Enfriamiento: \n - Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
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
                          builder: (context) => const RutinaPingPong()));
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
