import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myapp/pages/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

const List<String> list = <String>[
  'Administración De Empresas',
  'Construcción',
  'Contaduría Pública',
  'Ingeniería De Alimentos',
  'Ingeniería De Sistemas',
  'Nutrición Y Dietética',
  'Tecnología en Alimentos',
  'Tecnología en Desarrollo De Software',
  'Tecnología en Electrónica Industrial',
  'Trabajo Social '
];
String dropdownValue = list.first;

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
                    radius: 80.0,
                    backgroundColor: Color.fromARGB(0, 255, 255, 255),
                    backgroundImage: AssetImage("images/Logo_Univalle.png"),
                  ),
                  Text(
                    "UnivalleApp \n Registrate ",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 50.0,
                        color: Colors.white),
                  ),
                  //
                  // Campo de nombre
                  //
                  //
                  Text(
                    "Nombre",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
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
                        hintText: " Ingresa tu nombre",
                        filled: true,
                        labelText: "Nombre",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  //
                  // Campo de apellido
                  //
                  //
                  Text(
                    "Apellido",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        color: Color.fromARGB(255, 255, 255, 255)),
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
                        hintText: " Ingresa tu apellido",
                        filled: true,
                        labelText: "Apellido",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  //
                  // Campo de correo
                  //
                  //
                  Text(
                    "Correo Univalle",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
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
                        hintText: " Ingresa tu correo electronico",
                        filled: true,
                        labelText: "Correo Univalle",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  //
                  // campo de contrasena
                  //
                  Text(
                    "Contraseña",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
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
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: " Ingresa tu contraseña",
                        filled: true,
                        labelText: "Contraseña",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),

                  //
                  // Campo de programa academico
                  //
                  //
                  Text(
                    "Programa Academico",
                    style: TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 30.0,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 160.0,
                    height: 15.0,
                    child: Divider(color: Colors.white),
                  ),
                  //
                  // boton para campo de de programa academico
                  //
                  DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_downward),
                    elevation: 16,
                    style: const TextStyle(
                        fontFamily: "Oswald",
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 0, 0, 0)),
                    iconSize: 42,
                    iconEnabledColor: Colors.white,
                    underline: Container(
                      height: 2,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onChanged: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: list.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  //
                  // separadoor
                  //
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                  ),
                  //
                  // cooompletar registro
                  //
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Completar Registro",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: "Oswald",
                        ),
                      ),
                    ),
                  ),
                  //
                  // separadoor
                  //
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
                  ),
                  //
                  // volver al menu
                  //
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(color: Colors.white)))),
                      child: Text(
                        "Volver",
                        style: TextStyle(
                          fontSize: 20.0,
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
