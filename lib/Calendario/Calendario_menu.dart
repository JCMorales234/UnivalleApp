import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/Calendario/Barra_Fechas.dart';
import 'package:myapp/Calendario/Boton_Add.dart';
import 'package:myapp/Calendario/implementacionTarea.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class Calendario_Menu extends StatelessWidget {
  const Calendario_Menu({super.key});

  @override
  Widget build(BuildContext context) {
    //
    // variable seleccion de tiempo
    //
    DateTime _TiempoSeleccionado = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendario"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 153, 14, 14),
      ),
      body: Column(
        children: [
          const implementacionTarea(),
          const Barra_Fechas(),
        ],
      ),
    );
  }
}
