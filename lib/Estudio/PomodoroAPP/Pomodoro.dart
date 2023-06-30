import 'package:flutter/material.dart';
import 'package:myapp/Estudio/PomodoroAPP/Progresswidget.dart';
import 'package:myapp/Estudio/PomodoroAPP/TimeControler.dart';
import 'package:myapp/Estudio/PomodoroAPP/TimeOptions.dart';
import 'package:myapp/Estudio/PomodoroAPP/Timecard.dart';
import 'package:provider/provider.dart';

import '../../TimeService.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(123, 255, 25, 25),
      appBar: AppBar(
        title: Text("Pomodoro"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(122, 196, 18, 18),
        actions: [
          IconButton(
              onPressed: () =>
                  Provider.of<TimeService>(context, listen: false).reiniciar(),
              icon: Icon(
                Icons.refresh,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            TimerCard(),
            SizedBox(
              height: 40,
            ),
            TimeOptions(),
            SizedBox(
              height: 40,
            ),
            Timecontroller(),
            SizedBox(
              height: 40,
            ),
            Progress_Widget()
          ],
        ),
      )),
    );
  }
}
