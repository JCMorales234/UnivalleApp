import 'package:flutter/material.dart';
import 'package:myapp/src/Estudio/TimeService.dart';
import 'package:provider/provider.dart';

class Timecontroller extends StatefulWidget {
  const Timecontroller({super.key});

  @override
  State<Timecontroller> createState() => _TimecontrollerState();
}

class _TimecontrollerState extends State<Timecontroller> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimeService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255), shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          icon: provider.timeplaying
              ? const Icon(Icons.pause)
              : const Icon(Icons.play_arrow),
          color: const Color.fromARGB(255, 0, 0, 0),
          iconSize: 55,
          onPressed: () {
            provider.timeplaying
                ? Provider.of<TimeService>(context, listen: false).pause()
                : Provider.of<TimeService>(context, listen: false).Start();
          },
        ),
      ),
    );
  }
}
