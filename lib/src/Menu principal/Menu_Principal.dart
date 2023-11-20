import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Calendario/Calendario_menu.dart';
import 'package:myapp/src/Deportes/Menu_Deportes.dart';
import 'package:myapp/src/Estudio/Menu_Estudio.dart';
import 'package:myapp/src/entrada_y_registro/Login.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(192, 255, 6, 6),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                //
                // Logo
                //
                SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset("images/Logo_Univalle.png")),
                //
                // Calendario
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Calendario_Menu()));
                      },
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      label: const Text(
                        "Calendario",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                //
                // Estudio
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuEstudio()));
                      },
                      icon: const Icon(
                        Icons.menu_book,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      label: const Text(
                        "Estudio",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      )),
                ),

                //
                // Deportes
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MenuDeportes()));
                      },
                      icon: const Icon(
                        Icons.sports_gymnastics_sharp,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      label: const Text(
                        "Deportes",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      )),
                ),
              ],
            ),
            Row(
              children: [
                //
                // Perfil
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      label: const Text(
                        "Perfil",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      )),
                ),
                //
                // Cerrar sesion
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {
                        FirebaseAuth.instance.signOut();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()));
                      },
                      icon: const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 40.0,
                      ),
                      label: const Text(
                        "Cerrar Sesión",
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 10,
              height: MediaQuery.of(context).size.height / 8,
              child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 10)),
                items: const [
                  Text(
                    "Estudia una hora al dia todos los dias para formar un habito de estudio",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Univalle la mejor para los mejores",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Hacer ejercicio al menos media hora al dia ayuda a que tu cuerpo y mente se sientan saludables",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "“Aprender sin reflexionar es una ocupación inútil”. Confucio.",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontFamily: "Oswald",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
