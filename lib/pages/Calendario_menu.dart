import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Calendario_Menu extends StatelessWidget {
  const Calendario_Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SfDateRangePicker(),
    ));
  }
}
