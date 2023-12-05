import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Calendario/Calendario_menu.dart';
import 'package:myapp/src/Deportes/Menu_Deportes.dart';
import 'package:myapp/src/Estudio/Menu_Estudio.dart';
import 'package:myapp/src/entrada_y_registro/Login.dart';
import 'package:permission_handler/permission_handler.dart';

class MenuPrincipal extends StatefulWidget {
  const MenuPrincipal({super.key});

  @override
  State<MenuPrincipal> createState() => _MenuPrincipalState();
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
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Calendario_Menu()));
                        // Solicita los permisos necesarios
                        await Permission.notification.request();
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
                        _mostrarDialogo(context);
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
                // Cerrar sesion
                //
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton.icon(
                      onPressed: () {
                        __mostrarDialogosalida(context);
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
                items: _buildCarouselItems(),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCarouselItems() {
    List<String> frasesAleatorias = List.from(listaFrases);
    frasesAleatorias.shuffle(); // Mezcla la lista de frases

    return frasesAleatorias.map((frase) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: Card(
              color: Color.fromARGB(0, 255, 255, 255),
              child: Center(
                child: Text(
                  frase,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontFamily: "Oswald",
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        },
      );
    }).toList();
  }

  Future<void> __mostrarDialogosalida(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¿Estás seguro de que quieres cerrar sesión? '),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
              child: Text('Si', style: TextStyle(fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'No',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _mostrarDialogo(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Disclaimer ⚠️'),
          content: Text(
              'Las siguientes rutinas de entrenamiento pretenden fomentar el deporte para su práctica tanto dentro como fuera del campus universitario. Puedes usarlas para complementar tus entrenamientos o probar deportes nuevos.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MenuDeportes()));
              },
              child: Text('Entendido'),
            ),
          ],
        );
      },
    );
  }
}
