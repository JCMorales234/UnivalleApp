import 'package:flutter/material.dart';
import 'package:myapp/pages/Login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    backgroundColor: Color.fromARGB(0, 65, 20, 20),
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
                    "Nombre",
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
                        hintText: " Ingrea tu Nombre",
                        filled: true,
                        labelText: "Nombre",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Text(
                    "Apellido",
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
                        hintText: " Ingrea tu apellido",
                        filled: true,
                        labelText: "apellido",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Divider(height: 15.0),
                  Text(
                    "Correo electronico",
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
                        hintText: " Ingrea tu Correo electronico",
                        filled: true,
                        labelText: "Correo electronico",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Divider(height: 15.0),
                  Text(
                    "Programa Academico",
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
                        hintText: " Ingrea tu Programa Academico",
                        filled: true,
                        labelText: "Programa Academico",
                        suffixIcon: Icon(Icons.supervised_user_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        fillColor: Colors.white),
                  ),
                  Divider(height: 15.0),
                  SizedBox(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text(
                        "Completar registro",
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
                            MaterialPageRoute(builder: (context) => login()));
                      },
                      child: Text(
                        "Volver al menu principal",
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
            ], // #ToDo Circleavatar en la carpeta widget
          ),
        ),
      ),
    );
  }
}
