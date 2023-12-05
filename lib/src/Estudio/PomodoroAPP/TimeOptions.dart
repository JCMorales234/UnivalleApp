import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/TimeService.dart';

import 'package:provider/provider.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    List tiempos = [
      "0",
      "300",
      "600",
      "900",
      "1200",
      "1500",
      "1800",
      "2100",
      "2400",
      "2700",
      "3000",
      "3300",
      "3600"
    ];

    final provider = Provider.of<TimeService>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Visibility(
        visible: provider.CurrentDuration ~/ 60 == 0 ? true : false,
        child: Row(
            children: tiempos.map((Time) {
          return InkWell(
            onTap: () => provider.SelecTime(double.parse(Time)),
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              width: 70,
              height: 50,
              decoration: int.parse(Time) == provider.SelectedTime
                  ? BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5))
                  : BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Text(
                  (int.parse(Time) ~/ 60).toString(),
                  style: TextStyle(
                    fontSize: 30.0,
                    color: int.parse(Time) == provider.SelectedTime
                        ? const Color.fromARGB(255, 0, 0, 0)
                        : Colors.white,
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}
