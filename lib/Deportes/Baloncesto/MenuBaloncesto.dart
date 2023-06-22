import 'package:flutter/material.dart';

class MenuBaloncesto extends StatelessWidget {
  const MenuBaloncesto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Baloncesto 🏀"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(123, 255, 25, 25),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/Basquet1.jpeg",
                width: 2000.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              ),
              Text(
                "El baloncesto es un deporte de equipo de 5 contra 5 en el cual la meta es obtener mas puntos que el equipo rival",
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
                "Escoge el nivel de la rutina",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
              ),
              ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Principiante",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Intermedio",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Avanzado",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ])
            ],
          ),
        ],
      ),
    );
  }
}
