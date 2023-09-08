import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Calendario/Boton_Add.dart';
import 'package:myapp/Calendario/Calendario_menu.dart';
import 'package:myapp/Calendario/campo_llenar.dart';

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
  List<String> _ListaRepetir = ["no", "Diario", "Semanal", "Mensual"];
  int colorsele = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Añadir tarea al calendario"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 14, 14),
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
                icon: Icon(Icons.calendar_today_outlined),
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
                    icon: Icon(Icons.access_time_filled_rounded),
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
                    icon: Icon(Icons.access_time_filled_rounded),
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
                icon: Icon(Icons.keyboard_arrow_down),
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
                style: TextStyle(
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
              pista: "$_Repetir",
              titulo: "Repetir",
              widget: DropdownButton(
                icon: Icon(Icons.keyboard_arrow_down),
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
                style: TextStyle(
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
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ));
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _paleta_de_colores(),
                Boton_Add(label: "Confirmar", onTap: () => _validarfecha())
              ],
            )
          ],
        )),
      ),
    );
  }

  _Mostrar_Calendario() async {
    DateTime? _obtenerFecha = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2023),
        lastDate: DateTime(2080));
    if (_obtenerFecha != null) {
      setState(() {
        _Tiempo_Seleccionado = _obtenerFecha;
      });
    }
  }

  _obtener_Hora({required bool iniciotiempo}) async {
    var tiempo_elegido = await _Mostrar_hora();
    String tiempo_convertido = tiempo_elegido.format(context);
    if (tiempo_elegido == null) {
      print("error");
    } else if (iniciotiempo == true) {
      setState(() {
        _TiempoInicio = tiempo_convertido;
      });
    } else if (iniciotiempo == false) {
      setState(() {
        _TiempoFin = tiempo_convertido;
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

  _paleta_de_colores() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: TextStyle(
            fontFamily: "Oswald",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
            children: List<Widget>.generate(3, (int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                colorsele = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 14,
                backgroundColor: index == 0
                    ? Colors.brown
                    : index == 1
                        ? Colors.pink
                        : Color.fromARGB(255, 255, 104, 34),
                child: colorsele == index
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 16,
                      )
                    : Container(),
              ),
            ),
          );
        })),
      ],
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

  _validarfecha() {
    if (_controladortitutlo.text.isNotEmpty &&
        _controladornotas.text.isNotEmpty) {
      //agregar a base de datos
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Calendario_Menu()));
    } else if (_controladortitutlo.text.isEmpty ||
        _controladornotas.text.isEmpty) {
      // mosstrar alerta de que son campos requeridos
      _dialogBuilder(context);
    }
  }
}
