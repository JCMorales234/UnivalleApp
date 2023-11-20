import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Menu%20principal/Menu_Principal.dart';
import 'package:myapp/src/entrada_y_registro/Sign_up.dart';
import 'package:myapp/src/entrada_y_registro/firebase_auth_implementation.dart';
import "package:myapp/src/widgets_globales/toast.dart";

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  final firebaseauthservice _auth = firebaseauthservice();

  final TextEditingController _controladoremail = TextEditingController();
  final TextEditingController _controladorpassword = TextEditingController();
  @override
  void dispose() {
    _controladoremail.dispose();
    _controladorpassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(192, 255, 6, 6),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80.0,
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                    backgroundImage: AssetImage("images/Logo_Univalle.png"),
                  ),
                  const Text(
                    "UnivalleApp",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 50.0,
                        color: Colors.white),
                  ),
                  const Text(
                    "Usuario",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.white),
                  ),
                  TextField(
                    controller: _controladoremail,
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: " Ingresa tu correo electronico",
                        filled: true,
                        labelText: "Correo electronico",
                        suffixIcon: const Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  const Text(
                    "Contraseña",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.white),
                  ),
                  TextField(
                    controller: _controladorpassword,
                    obscureText: true,
                    enableInteractiveSelection: false,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                        hintText: " Ingresa tu contraseña",
                        filled: true,
                        labelText: "Contraseña",
                        suffixIcon: const Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  const Divider(height: 15.0),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        _entradaconemailypassword();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Colors.white)))),
                      child: const Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                  ),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: const BorderSide(
                                          color: Colors.white)))),
                      child: const Text(
                        "Registrarse",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
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

  void _entradaconemailypassword() async {
    String correousuario = _controladoremail.text;
    String passwordusuario = _controladorpassword.text;

    User? user =
        await _auth.entradaconemailycontrasena(correousuario, passwordusuario);

    if (user != null && user.emailVerified == true) {
      print("inicio sesion con exito");
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MenuPrincipal()));
    } else {
      showtoast(mensaje: "correo o contraseña incorrecta");
    }
  }
}