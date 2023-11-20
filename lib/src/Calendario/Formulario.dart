import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/Calendario/Boton_Add.dart';
import 'package:myapp/src/Calendario/Calendario_menu.dart';
import 'package:myapp/src/Calendario/campo_llenar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final TextEditingController _controladortitutlo = TextEditingController();
  final TextEditingController _controladornotas = TextEditingController();
  DateTime _Tiempo_Seleccionado = DateTime.now();
  String _TiempoInicio = "8:00 AM";
  String _TiempoFin = "10:30 PM";
  int _recordatorioselecionado = 5;
  List<int> lista_recordatorio = [5, 10, 15, 20];
  String _Repetir = "No";
  final List<String> _ListaRepetir = ["no", "Diario", "Semanal", "Mensual"];
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Añadir tarea al calendario"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 14, 14),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
            child: Column(
          children: [
            campo_llenar(
              pista: "Escribe el titulo de la tarea",
              titulo: "Titulo",
              controlador: _controladortitutlo,
            ),
            campo_llenar(
              pista: "Escribe una nota",
              titulo: "Nota",
              controlador: _controladornotas,
            ),
            campo_llenar(
              pista: DateFormat.yMd().format(_Tiempo_Seleccionado),
              titulo: "Fecha",
              widget: IconButton(
                icon: const Icon(Icons.calendar_today_outlined),
                onPressed: () {
                  _Mostrar_Calendario();
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: campo_llenar(
                  pista: _TiempoInicio,
                  titulo: "Hora de inicio",
                  widget: IconButton(
                    icon: const Icon(Icons.access_time_filled_rounded),
                    onPressed: () {
                      _obtener_Hora(iniciotiempo: true);
                    },
                  ),
                )),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: campo_llenar(
                  pista: _TiempoFin,
                  titulo: "Hora de fin",
                  widget: IconButton(
                    icon: const Icon(Icons.access_time_filled_rounded),
                    onPressed: () {
                      _obtener_Hora(iniciotiempo: false);
                    },
                  ),
                )),
              ],
            ),
            campo_llenar(
              pista: "$_recordatorioselecionado minutos antes",
              titulo: "Recordatorio",
              widget: DropdownButton(
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 32,
                elevation: 4,
                underline: Container(
                  height: 0,
                ),
                onChanged: (String? valornuevo) {
                  setState(() {
                    _recordatorioselecionado = int.parse(valornuevo!);
                  });
                },
                style: const TextStyle(
                  fontFamily: "Oswald",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                items: lista_recordatorio
                    .map<DropdownMenuItem<String>>((int value) {
                  return DropdownMenuItem<String>(
                    value: value.toString(),
                    child: Text(value.toString()),
                  );
                }).toList(),
              ),
            ),
            campo_llenar(
              pista: _Repetir,
              titulo: "Repetir",
              widget: DropdownButton(
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: 32,
                elevation: 4,
                underline: Container(
                  height: 0,
                ),
                onChanged: (String? valornuevo) {
                  setState(() {
                    _Repetir = valornuevo!;
                  });
                },
                style: const TextStyle(
                  fontFamily: "Oswald",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                items: _ListaRepetir.map<DropdownMenuItem<String>>(
                    (String? value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value!,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ));
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Boton_Add(
                    label: "Confirmar",
                    onTap: () {
                      _validarfecha();
                    })
              ],
            )
          ],
        )),
      ),
    );
  }

  _Mostrar_Calendario() async {
    DateTime? obtenerFecha = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2080));
    if (obtenerFecha != null) {
      setState(() {
        _Tiempo_Seleccionado = obtenerFecha;
      });
    }
  }

  _obtener_Hora({required bool iniciotiempo}) async {
    var tiempoElegido = await _Mostrar_hora();
    String tiempoConvertido = tiempoElegido.format(context);
    if (tiempoElegido == null) {
      print("error");
    } else if (iniciotiempo == true) {
      setState(() {
        _TiempoInicio = tiempoConvertido;
      });
    } else if (iniciotiempo == false) {
      setState(() {
        _TiempoFin = tiempoConvertido;
      });
    }
  }

  _Mostrar_hora() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(_TiempoInicio.split(":")[0]),
            minute: int.parse(_TiempoInicio.split(":")[1].split(" ")[0])));
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Campos requeridos ⚠️',
            style: TextStyle(
              fontFamily: "Oswald",
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'Los campos Titulo y Nota\n'
            'deben ser llenados siempre\n',
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
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _validarfecha() {
    if (_controladortitutlo.text.isNotEmpty &&
        _controladornotas.text.isNotEmpty) {
      FirebaseFirestore.instance.collection("Tarea").add({
        "Titulo": _controladortitutlo.text.trim(),
        "Nota": _controladornotas.text.trim(),
        "Fecha": _Tiempo_Seleccionado.toString().split(" ")[0],
        "HoraInicio": _TiempoInicio.toString(),
        "HoraFin": _TiempoFin.toString(),
        "Recordatorio": _recordatorioselecionado.toInt(),
        "Repetir": _Repetir.toString(),
        "userId": _auth.currentUser?.uid
      });
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Calendario_Menu()));
    } else if (_controladortitutlo.text.isEmpty ||
        _controladornotas.text.isEmpty) {
      // mosstrar alerta de que son campos requeridos
      _dialogBuilder(context);
    }
  }
}
