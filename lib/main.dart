import 'package:flutter/material.dart';
import 'package:myapp/src/Calendario/notification_service.dart';

import 'package:myapp/src/Estudio/TimeService.dart';

import 'package:myapp/src/entrada_y_registro/Login.dart';
import 'package:provider/provider.dart';

import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/data/latest.dart' as tz;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await notificationservice.initializeNotification();
  await Permission.notification.request();
  await Permission.accessNotificationPolicy.request();
  await Firebase.initializeApp();
  // Solicita los permisos necesarios

  // Establece la configuración regional predeterminada
  Intl.defaultLocale = "es_ES";
  // Inicializa la configuración de fechas para la configuración regional específica
  await initializeDateFormatting(Intl.defaultLocale, null);

  // Configura la zona horaria
  tz.initializeTimeZones();

  runApp(ChangeNotifierProvider<TimeService>(
    create: (_) => TimeService(),
    child: const MyApp(),
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
