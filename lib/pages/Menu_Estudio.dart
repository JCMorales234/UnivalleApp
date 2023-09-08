import 'package:flutter/material.dart';
import 'package:myapp/Estudio/Flowtime/FlowTime.dart';
import 'package:myapp/Estudio/PomodoroAPP/Pomodoro.dart';

class MenuEstudio extends StatelessWidget {
  const MenuEstudio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(123, 255, 25, 25),
        appBar: AppBar(
          title: Text("Metodos de estudio 👨‍🎓👩‍🎓"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(122, 196, 18, 18),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Image.asset("images/Estudiando.png")),
              Text(
                "Para estudiar de manera efectiva debemos aprender a administrar nuestro tiempo disponible de la mejor forma posible, por lo tanto a continuación podras utilizar dos técnicas de estudio utiles que te ayudaran a maximixzar tu tiempo de estudio: \n\n  - Pomodoro: Se basa en usar un temporizador para dividir el tiempo en intervalos fijos, llamados pomodoros, de 25 minutos de actividad, seguidos de 5 minutos de descanso, con pausas más largas cada cuatro pomodoros. \n\n - FlowTime: Esta técnica se basa en tu estado de animo por lo que no hay tiempos pre establecidos por la  técnica en primer lugar. Para empezar se selecciona una cantidad de tiempo deseada para estudiar y cuando este tiempo termine se decide si seguir o no estudiando, en cualquiera de los dos casos se selecciona un periodo de tiempo nuevo y cuando este se cumpla se vuelvve a iniciar el ciclo. \n\n Prueba los metodos de estuido: ",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 7,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pomodoro()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Pomodoro",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 7,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlowTime()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Flowtime",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
