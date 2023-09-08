import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class Barra_Fechas extends StatelessWidget {
  const Barra_Fechas({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime _TiempoSeleccionado = DateTime.now();
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      child: DatePicker(
        locale: "es_ES",
        DateTime.now(),
        height: 100,
        width: 100,
        initialSelectedDate: DateTime.now(),
        selectedTextColor: Color.fromARGB(255, 255, 255, 255),
        selectionColor: Color.fromARGB(255, 153, 14, 14),
        dateTextStyle: TextStyle(
            fontFamily: "Oswald",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 126, 126, 126)),
        monthTextStyle: TextStyle(
            fontFamily: "Oswald",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 126, 126, 126)),
        onDateChange: (date) {
          _TiempoSeleccionado = date;
        },
      ),
    );
  }
}
