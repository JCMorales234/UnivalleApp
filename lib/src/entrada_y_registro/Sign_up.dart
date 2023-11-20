import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/entrada_y_registro/Login.dart';
import 'package:myapp/src/entrada_y_registro/firebase_auth_implementation.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final firebaseauthservice _auth = firebaseauthservice();

  final TextEditingController _controladoremail = TextEditingController();
  final TextEditingController _controladorpassword = TextEditingController();
  final TextEditingController _controladornombre = TextEditingController();
  final TextEditingController _controladorapellido = TextEditingController();
  @override
  void dispose() {
    _controladoremail.dispose();
    _controladorpassword.dispose();
    _controladornombre.dispose();
    _controladorapellido.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(192, 255, 6, 6),
          body: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
            width: double.infinity,
            height: double.infinity,
            child: ListView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 0),
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
                      "UnivalleApp \n Registrate ",
                      style: TextStyle(
                          fontFamily: "Oswald",
                          fontSize: 50.0,
                          color: Colors.white),
                    ),
                    //
                    // texto de nombre
                    //      ⬇️⬇️⬇️
                    //
                    const Text(
                      "Nombre",
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
                    //
                    //
                    //Campo de texto de nombre
                    //        ⬇️⬇️⬇️
                    //
                    TextFormField(
                      controller: _controladornombre,
                      enableInteractiveSelection: false,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: " Ingresa tu nombre",
                          filled: true,
                          labelText: "Nombre",
                          suffixIcon: const Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Colors.white),
                    ),
                    //
                    // texto de apellido
                    //        ⬇️⬇️⬇️
                    //
                    const Text(
                      "Apellido",
                      style: TextStyle(
                          fontFamily: "Oswald",
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    const SizedBox(
                      width: 160.0,
                      height: 15.0,
                      child: Divider(color: Colors.white),
                    ),
                    //
                    // Campo de texto apellido
                    //        ⬇️⬇️⬇️
                    //
                    TextFormField(
                      controller: _controladorapellido,
                      enableInteractiveSelection: false,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: " Ingresa tu apellido",
                          filled: true,
                          labelText: "Apellido",
                          suffixIcon: const Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Colors.white),
                    ),
                    //
                    // texto de correo
                    //    ⬇️⬇️⬇️
                    //
                    const Text(
                      "Correo Univalle",
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
                    //
                    //  campo de texto de correo
                    //    ⬇️⬇️⬇️
                    //
                    TextFormField(
                      controller: _controladoremail,
                      enableInteractiveSelection: false,
                      textCapitalization: TextCapitalization.characters,
                      decoration: InputDecoration(
                          hintText: " Ingresa tu correo electronico",
                          filled: true,
                          labelText: "Correo Univalle",
                          suffixIcon: const Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Colors.white),
                    ), //
                    //
                    // texto de contrasena
                    //      ⬇️⬇️⬇️
                    //
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
                    //
                    // campo de contrasena
                    //      ⬇️⬇️⬇️
                    //
                    TextFormField(
                      controller: _controladorpassword,
                      enableInteractiveSelection: false,
                      textCapitalization: TextCapitalization.characters,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: " Ingresa tu contraseña",
                          filled: true,
                          labelText: "Contraseña",
                          suffixIcon: const Icon(Icons.supervised_user_circle),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fillColor: Colors.white),
                    ),
                    const SizedBox(
                      width: 160.0,
                      height: 15.0,
                      child: Divider(color: Colors.white),
                    ),
                    //
                    // separadoor
                    //
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                    ),
                    //
                    //  BOTON completar registro
                    //
                    SizedBox(
                      child: TextButton(
                        onPressed: () {
                          _registroemailycontra();
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                        color: Colors.white)))),
                        child: const Text(
                          "Completar Registro",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontFamily: "Oswald",
                          ),
                        ),
                      ),
                    ),
                    //
                    // separadoor
                    //
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                    ),
                    //
                    // volver al menu
                    //
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
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
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
      ),
    );
  }

  void _registroemailycontra() async {
    String nombreusuario = _controladornombre.text;
    String apellidousuario = _controladorapellido.text;
    String correousuario = _controladoremail.text;
    String passwordusuario = _controladorpassword.text;

    User? user =
        await _auth.registarteemailycontrasena(correousuario, passwordusuario);
    await _auth.enviaremaildeverificacion(correousuario);
    FirebaseFirestore.instance.collection("Usuario").add({
      "nombre": nombreusuario,
      "apellido": apellidousuario,
      "correo": correousuario
    });

    if (user != null) {
      print("usuario creado de manera correcta");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const login()));
    }
  }
}
