import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/entrada_y_registro/Login.dart';
import 'package:myapp/src/entrada_y_registro/firebase_auth_implementation.dart';

class reduperarpassword extends StatefulWidget {
  const reduperarpassword({super.key});

  @override
  State<reduperarpassword> createState() => _reduperarpasswordState();
}

class _reduperarpasswordState extends State<reduperarpassword> {
  @override
  final firebaseauthservice _auth = firebaseauthservice();

  final TextEditingController _controladoremail = TextEditingController();

  @override
  void dispose() {
    _controladoremail.dispose();

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
                    "Ingresa tu email para cambiar tu contraseña",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                  TextField(
                    controller: _controladoremail,
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                        hintText: " Ingresa tu email",
                        filled: true,
                        labelText: "email",
                        suffixIcon: const Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  const Divider(height: 15.0),
                  Padding(padding: EdgeInsets.only(bottom: 10.0)),
                  SizedBox(
                    child: TextButton(
                      onPressed: () async {
                        recuperarcontra();
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
                        "Cambiar contraseña",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 20.0)),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const login()));
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
                        "Volver",
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

  Future recuperarcontra() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _controladoremail.text.trim());
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Revisa tu Correo',
              style: TextStyle(
                fontFamily: "Oswald",
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: const Text(
              'Se a enviado a tu correo un enlace con el cual podras restablecer tu contraseña',
              style: TextStyle(
                fontFamily: "Oswald",
                fontSize: 20,
                fontWeight: FontWeight.w200,
              ),
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text(
                  'Entendido',
                  style: TextStyle(
                      fontFamily: "Oswald",
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                      color: Colors.red),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const login()));
                },
              ),
            ],
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }
}
