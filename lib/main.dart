import 'package:flutter/material.dart';
import 'package:myapp/TimeService.dart';

import 'package:myapp/pages/Login.dart';
import 'package:provider/provider.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  Intl.defaultLocale = "es_ES";
  initializeDateFormatting('es_ES', null);
  runApp(ChangeNotifierProvider<TimeService>(
    create: (_) => TimeService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'ProyectoU', home: login());
  }
}
