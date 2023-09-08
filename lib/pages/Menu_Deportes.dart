import 'package:flutter/material.dart';
import 'package:myapp/Deportes/Acondicionamiento%20Fisico/MenuAFisico.dart';
import 'package:myapp/Deportes/Futbol%20Sala/MenuFutbolSala.dart';
import 'package:myapp/Deportes/Futbol/MenuFutbol.dart';
import 'package:myapp/Deportes/Natacion/MenuNatacion.dart';
import 'package:myapp/Deportes/Voleibol/MenuVoleibol.dart';
import 'package:myapp/iconos_app_icons.dart';
import 'package:myapp/Calendario/Calendario_menu.dart';
import 'package:myapp/pages/Login.dart';
import 'package:myapp/Deportes/Baloncesto/MenuBaloncesto.dart';
import 'package:myapp/pages/Menu_Principal.dart';

class MenuDeportes extends StatefulWidget {
  const MenuDeportes({super.key});

  @override
  State<MenuDeportes> createState() => _MenuDeportesState();
}

class _MenuDeportesState extends State<MenuDeportes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(192, 255, 6, 6),
      body: GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        children: <Widget>[
//
// Acondicionamiento fisico
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuAfisico()));
              },
              icon: Icon(
                Icons.sports,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Acondicionamiento Fisico",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
                textAlign: TextAlign.center,
              )),
//
// Ajedrez
//
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                IconosApp.chess,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Ajedrez",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Baloncesto
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuBaloncesto()));
              },
              icon: Icon(
                Icons.sports_basketball,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Baloncesto",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Futbol
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuFutbol()));
              },
              icon: Icon(
                Icons.sports_soccer,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Futbol",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// futbol sala
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuFutbolSala()));
              },
              icon: Icon(
                Icons.sports_soccer_rounded,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Futbol Sala",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Natacion
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuNatacion()));
              },
              icon: Icon(
                IconosApp.swimming,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Natacion",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// tenis de mesa
//
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                IconosApp.table_tennis,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Tenis de mesa",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Ultimate
//

          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                IconosApp.toys,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Ultimate",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Voleibol
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuVoleibol()));
              },
              icon: Icon(
                Icons.sports_volleyball,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Voleibol",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),

//
// Boton volver
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuPrincipal()));
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Volver al Menu principal",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
        ],
      ),
    );
  }
}
