import 'package:flutter/material.dart';
import 'package:myapp/iconos_app_icons.dart';
import 'package:myapp/pages/Calendario_menu.dart';
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
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuBaloncesto()));
              },
              icon: Icon(
                Icons.sports,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Acondicionamiento Fisico",
                style: TextStyle(
                  fontSize: 28.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
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
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
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
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.sports_soccer,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Futbol",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.sports_soccer_rounded,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Futbol Sala",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                IconosApp.swimming,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Natacion",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
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
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
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
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.sports_volleyball,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Voleibol",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
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
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
        ],
      ),
    );
  }
}
