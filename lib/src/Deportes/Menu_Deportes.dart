import 'package:flutter/material.dart';
import 'package:myapp/src/Deportes/Acondicionamiento%20Fisico/MenuAFisico.dart';
import 'package:myapp/src/Deportes/Baloncesto/MenuBaloncesto.dart';
import 'package:myapp/src/Deportes/Futbol%20Sala/MenuFutbolSala.dart';
import 'package:myapp/src/Deportes/Futbol/MenuFutbol.dart';
import 'package:myapp/src/Deportes/Natacion/MenuNatacion.dart';
import 'package:myapp/src/Deportes/Voleibol/MenuVoleibol.dart';
import 'package:myapp/src/Menu%20principal/Menu_Principal.dart';

class MenuDeportes extends StatefulWidget {
  const MenuDeportes({super.key});

  @override
  State<MenuDeportes> createState() => _MenuDeportesState();
}

class _MenuDeportesState extends State<MenuDeportes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(192, 255, 6, 6),
      body: GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 2,
        crossAxisCount: 2,
        padding: const EdgeInsets.all(10),
        children: <Widget>[
//
// Acondicionamiento fisico
//
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuAfisico()));
              },
              icon: const Icon(
                Icons.sports,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
              icon: const Icon(
                IconosApp.chess,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuBaloncesto()));
              },
              icon: const Icon(
                Icons.sports_basketball,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuFutbol()));
              },
              icon: const Icon(
                Icons.sports_soccer,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuFutbolSala()));
              },
              icon: const Icon(
                Icons.sports_soccer_rounded,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuNatacion()));
              },
              icon: const Icon(
                IconosApp.swimming,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
              icon: const Icon(
                IconosApp.table_tennis,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
              icon: const Icon(
                IconosApp.toys,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuVoleibol()));
              },
              icon: const Icon(
                Icons.sports_volleyball,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuPrincipal()));
              },
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 40.0,
              ),
              label: const Text(
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

class IconosApp {
  IconosApp._();

  static const _kFontFam = 'IconosApp';
  static const String? _kFontPkg = null;

  static const IconData toys =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData swimming =
      IconData(0xe838, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chess =
      IconData(0xf439, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData table_tennis =
      IconData(0xf45d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
