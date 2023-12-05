import 'package:flutter/material.dart';

import 'package:myapp/src/Estudio/Flowtime/Flowtime.dart';

import 'package:myapp/src/Estudio/PomodoroAPP/Pomodoro.dart';

class MenuEstudio extends StatelessWidget {
  const MenuEstudio({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(246, 255, 255, 255),
        appBar: AppBar(
          title: const Text(
            "Metodos de estudio 👨‍🎓👩‍🎓",
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "\nSelecciona un método de estudio para hacer que tus sesiones de estudio sean mas efectivas.\n\nCon el método de estudio de pomodoro podras encontrar el balance entre tiempo de estudio y descanso \n\nCon el Metodo Flowtime podras aprovechar esos momentos de inspiracion para seguir estudiando. \n\nPulsa el boton del metodo de estudio que quieras utilizar",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Oswald",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Pomodoro()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 153, 14, 14),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                        color: Color.fromARGB(255, 153, 14, 14),
                                      )))),
                          child: const Text(
                            "Pomodoro",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "Oswald",
                            ),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(30)),
                      SizedBox(
                        width: 150,
                        height: 100,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FlowTime()));
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 153, 14, 14),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                        color: Color.fromARGB(255, 153, 14, 14),
                                      )))),
                          child: const Text(
                            "Flowtime",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontFamily: "Oswald",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
