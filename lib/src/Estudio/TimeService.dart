import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:soundpool/soundpool.dart';
import 'package:flutter/material.dart';
import "package:myapp/src/Calendario/notification_service.dart";

class TimeService extends ChangeNotifier {
  late Timer timer;
  double CurrentDuration = 0;
  double SelectedTime = 0;
  bool timeplaying = false;
  int rounds = 0;
  int goal = 0;
  int PM = 0;
  Soundpool pool = Soundpool(streamType: StreamType.notification);

  String Estado = "Modo Concentración";

  Future<void> sonido() async {
    int soundId = await rootBundle
        .load("sonidos/sonidocampana.mp3")
        .then((ByteData soundData) {
      return pool.load(soundData);
    });
    int streamId = await pool.play(soundId);
  }

  void Start() {
    timeplaying = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (CurrentDuration == 0) {
        PasarRonda();
      } else {
        CurrentDuration--;
        notifyListeners();
      }
    });
  }

  void pause() {
    timer.cancel();
    timeplaying = false;
    notifyListeners();
  }

  void SelecTime(double seconds) {
    SelectedTime = seconds;
    CurrentDuration = seconds;
    notifyListeners();
  }

  Future<void> reiniciar() async {
    timer.cancel();
    timeplaying = false;
    Estado = "Modo Concentración";
    CurrentDuration = 0;
    SelectedTime = 0;
    rounds = 0;
    goal = 0;
    pool.release();
    notifyListeners();
  }

  Future<void> LlegadaMeta() async {
    timer.cancel();
    timeplaying = false;
    Estado = "Modo Concentración";
    CurrentDuration = 0;
    SelectedTime = 0;
    rounds = 0;
    goal = 0;
    pool.release();
    await notificationservice.shownotification(
      title: "UnivalleApp",
      body: "Felicitaciones llegaste a la meta 🥳🥳🥳",
    );
    notifyListeners();
  }

  Future<void> PasarRonda() async {
    if (Estado == "Modo Concentración" && rounds != 3 && PM == 1) {
      Estado = "Descanso";
      CurrentDuration = 300;
      SelectedTime = 300;
      rounds++;
      goal++;
      sonido();
      await notificationservice.shownotification(
        title: "UnivalleApp",
        body: "Tiempo de Descanso",
      );
    } else if (Estado == "Descanso") {
      Estado = "Modo Concentración";
      timer.cancel();
      timeplaying = false;
      CurrentDuration = 1500;
      SelectedTime = 1500;
      sonido();
      await notificationservice.shownotification(
        title: "UnivalleApp",
        body: "Modo Concentración",
      );
    } else if (Estado == "Modo Concentración" && rounds == 3) {
      Estado = "Descanso Largo";
      CurrentDuration = 1500;
      SelectedTime = 1500;
      rounds++;
      goal++;
      sonido();
      await notificationservice.shownotification(
        title: "UnivalleApp",
        body: "Tiempo de Descanso",
      );
    } else if (Estado == "Descanso Largo") {
      Estado = "Modo Concentración";
      timer.cancel();
      timeplaying = false;
      CurrentDuration = 1500;
      SelectedTime = 1500;
      rounds = 0;
      sonido();
      await notificationservice.shownotification(
        title: "UnivalleApp",
        body: "Modo Concentración",
      );
    } else if (goal == 12) {
      LlegadaMeta();
    }
    notifyListeners();
  }
}
