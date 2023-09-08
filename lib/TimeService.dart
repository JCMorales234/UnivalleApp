import 'dart:async';

import 'package:flutter/material.dart';

class TimeService extends ChangeNotifier {
  late Timer timer;
  double CurrentDuration = 1500;
  double SelectedTime = 1500;
  bool timeplaying = false;
  int rounds = 0;
  int goal = 0;
  int PM = 0;

  String Estado = "Modo Concentración";

  void Start() {
    timeplaying = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
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

  void reiniciar() {
    timer.cancel();
    timeplaying = false;
    Estado = "Modo Concentración";
    CurrentDuration = 0;
    SelectedTime = 0;
    rounds = 0;
    goal = 0;
    notifyListeners();
  }

  void PasarRonda() {
    if (Estado == "Modo Concentración" && rounds != 3 && PM == 1) {
      Estado = "Descanso";
      CurrentDuration = 300;
      SelectedTime = 300;
      rounds++;
      goal++;
    } else if (Estado == "Descanso") {
      Estado = "Modo Concentración";
      timer.cancel();
      timeplaying = false;
      CurrentDuration = 1500;
      SelectedTime = 1500;
    } else if (Estado == "Modo Concentración" && rounds == 3) {
      Estado = "Descanso Largo";
      CurrentDuration = 1500;
      SelectedTime = 1500;
      rounds++;
      goal++;
    } else if (Estado == "Descanso Largo") {
      Estado = "Modo Concentración";
      timer.cancel();
      timeplaying = false;
      CurrentDuration = 1500;
      SelectedTime = 1500;
      rounds = 0;
    }
    notifyListeners();
  }
}
