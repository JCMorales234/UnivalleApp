import 'package:flutter/material.dart';
import 'package:myapp/pages/Menu_Principal.dart';
import 'package:myapp/pages/Sign_up.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromARGB(192, 255, 6, 6),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                    backgroundImage: AssetImage("images/Logo_Univalle.png"),
                  ),
                  Text(
                    "UnivalleApp",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 70.0,
                        color: Colors.white),
                  ),
                  Text(
                    "Usuario",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.white),
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: " Ingrea tu correo electronico registrado",
                        filled: true,
                        labelText: "Correo electronico",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Text(
                    "Contraseña",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 40.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.white),
                  ),
                  TextField(
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: " Ingrea tu contraseña",
                        filled: true,
                        labelText: "Contraseña",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Divider(height: 15.0),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuPrincipal()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Registrarse",
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
            ],
          ),
        ),
      ),
    );
  }
}
