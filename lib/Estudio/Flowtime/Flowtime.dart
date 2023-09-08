import 'package:flutter/material.dart';
import 'package:myapp/Estudio/PomodoroAPP/TimeControler.dart';
import 'package:myapp/Estudio/PomodoroAPP/TimeOptions.dart';
import 'package:myapp/Estudio/Flowtime/TimecardFT.dart';
import 'BtnCambio.dart';
import 'package:provider/provider.dart';
import '../../TimeService.dart';

class FlowTime extends StatelessWidget {
  const FlowTime({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    provider.PM = 0;
    return Center(
      child: Scaffold(
        backgroundColor: Color.fromARGB(123, 255, 25, 25),
        appBar: AppBar(
          title: Text("FlowTime"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(122, 196, 18, 18),
          actions: [
            IconButton(
                onPressed: () =>
                    Provider.of<TimeService>(context, listen: false)
                        .reiniciar(),
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
