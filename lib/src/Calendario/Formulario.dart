import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/src/Calendario/Boton_Add.dart';
import 'package:myapp/src/Calendario/Calendario_menu.dart';
import 'package:myapp/src/Calendario/campo_llenar.dart';
import "package:myapp/src/Calendario/notification_service.dart";
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as datatTimePicker;

class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final TextEditingController _controladortitutlo = TextEditingController();
  final TextEditingController _controladornotas = TextEditingController();
  DateTime _Fecha_Seleccionada = DateTime.now();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Añadir tarea al calendario",
          style: TextStyle(
              fontFamily: "Oswald", fontSize: 28.0, color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
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
              pista: DateFormat('dd/MM/yyyy HH:mm').format(_Fecha_Seleccionada),
              titulo: "Fecha y hora",
              widget: IconButton(
                icon: const Icon(Icons.calendar_today_outlined),
                onPressed: () {
                  datatTimePicker.DatePicker.showDateTimePicker(
                    context,
                    showTitleActions: true,
                    onChanged: (date) => _Fecha_Seleccionada = date,
                    onConfirm: (date) {
                      setState(() {
                        _Fecha_Seleccionada = date;
                      });
                    },
                  );
                },
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
                    onTap: () async {
                      _validarfecha();
                    })
              ],
            )
          ],
        )),
      ),
    );
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

  _validarfecha() async {
    if (_controladortitutlo.text.isNotEmpty &&
        _controladornotas.text.isNotEmpty) {
      var fechahora = _Fecha_Seleccionada.hour;
      var fechaminuto = _Fecha_Seleccionada.minute;
      var fechayear = _Fecha_Seleccionada.year;
      var fechames = _Fecha_Seleccionada.month;
      var fechadia = _Fecha_Seleccionada.day;

      String fechafinal =
          "$fechadia-$fechames-$fechayear\n$fechahora:$fechaminuto";

      FirebaseFirestore.instance.collection("Tarea").add({
        "Titulo": _controladortitutlo.text.trim(),
        "Nota": _controladornotas.text.trim(),
        "Fecha": fechafinal.toString().trim(),
        "userId": _auth.currentUser?.uid
      });

      await notificationservice.shownotification(
          title: _controladortitutlo.text,
          body: _controladornotas.text,
          scheduled: true,
          yearnoti: _Fecha_Seleccionada.year,
          mes: _Fecha_Seleccionada.month,
          dia: _Fecha_Seleccionada.day,
          horanoti: _Fecha_Seleccionada.hour,
          minutonoti: _Fecha_Seleccionada.minute);

      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Calendario_Menu()));
    } else if (_controladortitutlo.text.isEmpty ||
        _controladornotas.text.isEmpty) {
      // mosstrar alerta de que titulo y nota son campos requeridos
      _dialogBuilder(context);
    }
  }
}
