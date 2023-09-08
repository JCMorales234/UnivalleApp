import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../TimeService.dart';

class BtnCambio extends StatelessWidget {
  const BtnCambio({super.key});

  @override
  Widget build(BuildContext context) {
    bool visible = true;
    final provider = Provider.of<TimeService>(context);
    final segundos = provider.CurrentDuration % 60;
    return Visibility(
      visible: segundos == 0 ? true : false,
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            shape: BoxShape.rectangle),
        child: Center(
          child: TextButton(
            onPressed: () {
              if (provider.Estado == "Modo Concentración") {
                provider.Estado = "Tiempo de Descanso";
                provider.notifyListeners();
              } else if (provider.Estado == "Tiempo de Descanso") {
                provider.Estado = "Modo Concentración";
                provider.notifyListeners();
              }
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.white)))),
            child: Text(
              provider.Estado == "Modo Concentración"
                  ? "Activar modo descanso"
                  : "Activar modo concentración ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: "Oswald",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
