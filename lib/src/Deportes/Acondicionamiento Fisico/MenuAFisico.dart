import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Acondicionamiento%20Fisico/RutinaAfisico.dart';

class MenuAfisico extends StatelessWidget {
  const MenuAfisico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(246, 255, 255, 255),
      appBar: AppBar(
        title: const Text(
          "Acondicionamiento físico 💪",
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
                "La rutina consta de 3 fases Calentamiento, Entrenamiento principal y Estiramiento. Despues de cada serie de un ejercicio descansa 1 minuto \n\n Fase 1 Calentamiento: \n- Realizar ejercicios de estiramiento de brazos, piernas, rodillas, pies y cuello  \n\n Fase 2 Entrenamiento Principal: \n- Saltos de tijera 5 series 40 repeticiones \n- abdominales 5 series 40 repeticiones \n- Elevamiento de rodillas 5 series 40 repeticiones \n- Flexiones 5 series 10 repeticiones \n- Sentadillas 5 series de 40 repeticiones \n- Salta la cuerda o trotar a una velocidad moderada durante 10 minutos \n\n Fase 3: Enfriamiento: \n- Realizar ejercicios de estiramiento para brazos, muñecas, piernas, rodillas y pies  \n\n Si no sabes como realizar algun ejercicio mencionado anteriormente, pulsa el boton para ver una guia de los ejercios ",
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
                          builder: (context) => const RutinaAFisico()));
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
