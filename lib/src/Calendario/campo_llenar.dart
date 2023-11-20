import 'package:flutter/material.dart';

class campo_llenar extends StatelessWidget {
  final String titulo;
  final String pista;
  final TextEditingController? controlador;
  final Widget? widget;
  const campo_llenar(
      {super.key,
      required this.pista,
      required this.titulo,
      this.controlador,
      this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(titulo,
            style: const TextStyle(
              fontFamily: "Oswald",
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        Container(
          height: 52,
          margin: const EdgeInsets.only(top: 8.0),
          padding: const EdgeInsets.only(
            left: 14,
          ),
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 1.0),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Expanded(
                  child: TextFormField(
                readOnly: widget == null ? false : true,
                autofocus: false,
                cursorColor: Colors.grey,
                controller: controlador,
                style: const TextStyle(
                  fontFamily: "Oswald",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                    hintText: pista,
                    hintStyle: const TextStyle(
                      fontFamily: "Oswald",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0))),
              )),
              widget == null
                  ? Container()
                  : Container(
                      child: widget,
                    )
            ],
          ),
        )
      ]),
    );
  }
}
