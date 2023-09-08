import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../TimeService.dart';

class TimerCardFT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    final segundos = provider.CurrentDuration % 60;
    return Column(
      children: [
        Text(
          provider.Estado,
          style: TextStyle(
            fontSize: 30.0,
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Oswald",
          ),
        ),
        SizedBox(
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
                        offset: Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  (provider.CurrentDuration ~/ 60).toString(),
                  style: TextStyle(
                    fontSize: 80.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: "Oswald",
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              ":",
              style: TextStyle(
                fontSize: 100.0,
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: "Oswald",
              ),
            ),
            SizedBox(
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
                        offset: Offset(0, 2))
                  ]),
              child: Center(
                child: Text(
                  segundos == 0
                      ? "${segundos.round()}0"
                      : segundos.round().toString(),
                  style: TextStyle(
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
