import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/TimeService.dart';
import 'package:provider/provider.dart';

class BtnCambio extends StatelessWidget {
  const BtnCambio({super.key});

  @override
  Widget build(BuildContext context) {
    bool visible = true;
    final provider = Provider.of<TimeService>(context);
    final segundos = provider.CurrentDuration % 60;
    return Visibility(
      visible: provider.CurrentDuration ~/ 60 == 0 ? true : false,
      child: Container(
        width: 200,
        height: 100,
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
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Colors.white)))),
            child: Text(
              provider.Estado == "Modo Concentración"
                  ? "Activar modo descanso"
                  : "Activar modo concentración ",
              textAlign: TextAlign.center,
              style: const TextStyle(
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
