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
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(249, 226, 27, 27),
            Color.fromARGB(230, 223, 11, 11),
            Color.fromARGB(239, 206, 6, 6),
          ], begin: Alignment.topCenter)),
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100.0,
                    backgroundColor: Colors.white,
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
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
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
