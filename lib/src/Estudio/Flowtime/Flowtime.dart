import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/Flowtime/TimecardFT.dart';
import 'package:myapp/src/Estudio/PomodoroAPP/TimeControler.dart';
import 'package:myapp/src/Estudio/PomodoroAPP/TimeOptions.dart';
import 'package:myapp/src/Estudio/TimeService.dart';
import 'BtnCambio.dart';
import 'package:provider/provider.dart';

class FlowTime extends StatelessWidget {
  const FlowTime({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    provider.PM = 0;
    return Center(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(123, 255, 25, 25),
        appBar: AppBar(
          title: const Text(
            "FlowTime",
            style: TextStyle(
              fontSize: 28.0,
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: "Oswald",
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          backgroundColor: Color.fromARGB(57, 255, 25, 25),
          actions: [
            IconButton(
                onPressed: () =>
                    Provider.of<TimeService>(context, listen: false)
                        .reiniciar(),
                icon: const Icon(
                  Icons.refresh,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          child: const Column(
            children: [
              SizedBox(
                height: 15,
              ),
              TimerCardFT(),
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
              BtnCambio()
            ],
          ),
        )),
      ),
    );
  }
}
