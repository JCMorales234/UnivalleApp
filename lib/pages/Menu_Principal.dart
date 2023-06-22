import 'package:flutter/material.dart';
import 'package:myapp/pages/Calendario_menu.dart';
import 'package:myapp/pages/Login.dart';
import 'package:myapp/pages/Menu_Deportes.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
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
          CircleAvatar(
            backgroundImage: AssetImage("images/Logo_Univalle.png"),
            backgroundColor: Color.fromARGB(0, 255, 6, 6),
          ),
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Calendario_Menu()));
              },
              icon: Icon(
                Icons.calendar_month,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Calendario",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.timer,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Pomodoro",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuDeportes()));
              },
              icon: Icon(
                Icons.sports_gymnastics_sharp,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Deportes",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Perfil",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
          TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
                size: 40.0,
              ),
              label: Text(
                "Cerrar Sesión",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Oswald",
                ),
              )),
        ],
      ),
    );
  }
}
