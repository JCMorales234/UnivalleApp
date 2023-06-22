import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Calendario_Menu extends StatelessWidget {
  const Calendario_Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calendario"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(226, 255, 6, 6),
        ),
        body: Container(
          child: SfDateRangePicker(),
        ));
  }
}
