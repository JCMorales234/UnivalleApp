import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/TimeService.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    final segundos = provider.CurrentDuration % 60;
    return Column(
      children: [
        Text(
          provider.Estado,
          style: const TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Oswald",
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: const Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  (provider.CurrentDuration ~/ 60).toString(),
                  style: const TextStyle(
                    fontSize: 80.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              ":",
              style: TextStyle(
                fontSize: 100.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 3.2,
              height: 170,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 4,
                        offset: const Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  segundos == 0 ||
                          segundos == 1 ||
                          segundos == 2 ||
                          segundos == 3 ||
                          segundos == 4 ||
                          segundos == 5 ||
                          segundos == 6 ||
                          segundos == 7 ||
                          segundos == 8 ||
                          segundos == 9
                      ? "0${segundos.round()}"
                      : segundos.round().toString(),
                  style: const TextStyle(
                    fontSize: 80.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
