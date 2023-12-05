import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Menu%20principal/Menu_Principal.dart';
import 'package:myapp/src/entrada_y_registro/Forgotpassword.dart';
import 'package:myapp/src/entrada_y_registro/Sign_up.dart';
import 'package:myapp/src/entrada_y_registro/firebase_auth_implementation.dart';
import "package:myapp/src/widgets_globales/toast.dart";
import "package:myapp/src/Calendario/notification_service.dart";

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

  final List<String> listaFrases = [
    "“Aprender sin reflexionar es una ocupación inútil”. - Confucio.",
    "Estudia una hora al dia todos los dias para formar un habito de estudio",
    "Univalle la mejor para los mejores",
    "Hacer ejercicio al menos media hora al dia ayuda a que tu cuerpo y mente se sientan saludables",
    "El conocimiento es la llave para abrir las puertas del futuro.",
    "Cada página que lees te acerca a un nuevo horizonte de posibilidades.",
    "La educación es el camino hacia el éxito.",
    "Estudiar hoy es sembrar el éxito mañana.",
    "La mente que se abre a una nueva idea nunca vuelve a su tamaño original.",
    "Tu esfuerzo hoy será tu recompensa mañana.",
    "La educación es el arma más poderosa que puedes usar para cambiar el mundo. - Nelson Mandela",
    "La inversión en conocimiento siempre paga el mejor interés, - Benjamin Franklin",
    "Cada libro que lees añade una página a tu propia historia.",
    "No hay límites para lo que puedes lograr a través de la educación.",
    "La educación es el pasaporte hacia el futuro, el mañana pertenece a aquellos que se preparan hoy. - Malcolm X",
    "La mente es como un paracaídas, solo funciona si está abierta.",
    "Cada hora dedicada al estudio es una inversión en tu propio éxito.",
    "La educación no es preparación para la vida; la educación es la vida misma. - John Dewey",
    "El aprendizaje es un tesoro que sigue contigo siempre.",
    "No busques ser mejor que los demás, busca ser mejor de lo que eras ayer.",
    "El conocimiento es como una semilla: plantéala, cuídala y verás cómo crece.",
    "Tu actitud determina tu dirección. Mantén una actitud positiva hacia el estudio.",
    "La mente es como un músculo, cuanto más la ejercitas, más fuerte se vuelve.",
    "Cada pequeño paso que tomas te acerca a grandes logros.",
    "La educación es el camino hacia la libertad.",
    "La verdadera recompensa del estudio no es solo el conocimiento, sino la confianza que adquieres al obtenerlo.",
    "La excelencia no es un acto, sino un hábito. Cultiva el hábito del estudio.",
    "El conocimiento te da el poder de crear tu propio destino.",
    "El estudio no solo amplía tu mente, sino también tus oportunidades.",
    "La educación es el faro que ilumina el camino en la oscuridad.",
    "Cada palabra que lees es una semilla que siembras en tu mente.",
    "La persistencia garantiza el éxito. Sigue estudiando, incluso cuando sea difícil.",
    "El aprendizaje es un viaje que nunca termina.",
    "La mente es como un parque; llénala con las flores de la sabiduría.",
    "No hay atajos para el éxito. El estudio constante es la clave.",
    "El conocimiento es como una brújula que te guía hacia el éxito.",
    "El estudio no solo te prepara para el trabajo, sino para la vida.",
    "El esfuerzo que pones en tu educación es una inversión en tu propio ser.",
    "Cada problema tiene una solución. Estudiar te da las herramientas para encontrarla.",
    "No estudies para pasar el examen, estudia para entender y aplicar el conocimiento.",
    "La mente bien entrenada es tu mejor herramienta en la búsqueda del éxito.",
    "El aprendizaje es el superpoder que te lleva más allá de tus límites.",
    "El estudio es el arte de descubrir algo nuevo cada día.",
    "La educación es el camino que te lleva de lo que eres a lo que podrías ser.",
    "Cada libro que lees es una nueva aventura que experimentas.",
    "La educación es el cimiento sobre el cual construyes tu futuro.",
    "La mente que se nutre de conocimiento florece con creatividad y sabiduría.",
    "El estudio es la clave que desbloquea las puertas de la imaginación.",
    "No te preocupes por los resultados, preocúpate por el esfuerzo. Con el tiempo, los resultados hablarán por sí mismos.",
    "La educación es el mejor regalo que puedes darte a ti mismo.",
    "La perseverancia garantiza el éxito en el estudio y en la vida.",
    "La mente es como un jardín; cultívala con pensamientos positivos y conocimiento.",
    "Cada error es una oportunidad de aprendizaje. No temas equivocarte, teme no aprender.",
    "El estudio es el puente que te lleva de donde estás a donde quieres estar.",

    // Agrega más frases según sea necesario
  ];

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
                      onPressed: () async {
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
                  Padding(padding: EdgeInsets.only(top: 40.0)),
                  GestureDetector(
                    child: Text(
                      "¿Olvidaste tu contraseña?",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Oswald",
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const reduperarpassword()));
                    },
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
      final Random random = Random();
      final String fraseAleatoria =
          listaFrases[random.nextInt(listaFrases.length)];
      await notificationservice.shownotification(
          title: "UnivalleApp",
          body: fraseAleatoria,
          scheduled: true,
          yearnoti: DateTime.now().year,
          mes: DateTime.now().month,
          dia: DateTime.now().day,
          horanoti: DateTime.now().hour + 2,
          minutonoti: DateTime.now().minute);
      await notificationservice.shownotification(
          title: "UnivalleApp",
          body: fraseAleatoria,
          scheduled: true,
          yearnoti: DateTime.now().year,
          mes: DateTime.now().month,
          dia: DateTime.now().day,
          horanoti: DateTime.now().hour + 4,
          minutonoti: DateTime.now().minute);
      await notificationservice.shownotification(
          title: "UnivalleApp",
          body: fraseAleatoria,
          scheduled: true,
          yearnoti: DateTime.now().year,
          mes: DateTime.now().month,
          dia: DateTime.now().day,
          horanoti: DateTime.now().hour + 6,
          minutonoti: DateTime.now().minute);
    } else {
      showtoast(mensaje: "correo o contraseña incorrecta");
    }
  }
}
