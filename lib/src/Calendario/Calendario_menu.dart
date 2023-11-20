import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/Calendario/Barra_Fechas.dart';
import 'package:myapp/src/Calendario/implementacionTarea.dart';
import 'package:firebase_auth/firebase_auth.dart';

import "CartaTarea.dart";

class Calendario_Menu extends StatefulWidget {
  const Calendario_Menu({super.key});

  @override
  State<Calendario_Menu> createState() => _Calendario_MenuState();
}

class _Calendario_MenuState extends State<Calendario_Menu> {
  @override
  final Stream<QuerySnapshot> _stream =
      FirebaseFirestore.instance.collection("Tarea").snapshots();

  @override
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Widget build(BuildContext context) {
    //
    // variable seleccion de tiempo
    //
    DateTime TiempoSeleccionado = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendario"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 153, 14, 14),
      ),
      body: Column(
        children: [
          const implementacionTarea(),
          const Barra_Fechas(),
          const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Container(
            child: StreamBuilder(
                stream: getTasksStream(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(
                        color: Color.fromARGB(255, 153, 14, 14),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    // Manejar el caso cuando no hay datos disponibles
                    return const Center(
                      child: Text('No hay tareas disponibles.'),
                    );
                  } else {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          var tarea = snapshot.data!.docs[index].data()
                              as Map<String, dynamic>;
                          return CartaTarea(
                            titulo: tarea["Titulo"],
                            nota: tarea["Nota"],
                            fecha: tarea["Fecha"],
                            horainicio: tarea["HoraInicio"],
                            horafin: tarea["HoraFin"],
                          );
                        },
                      ),
                    );
                  }
                }),
          )
        ],
      ),
    );
  }

  Stream<QuerySnapshot> getTasksStream() {
    // Obtén el usuario actualmente autenticado
    User? user = _auth.currentUser;

    if (user != null) {
      // Retorna un stream que escucha cambios en las tareas del usuario actual
      return _firestore
          .collection(
              'Tarea') // Asegúrate de que el nombre de la colección sea correcto
          .where('userId', isEqualTo: user.uid)
          .snapshots();
    } else {
      // Retorna un stream vacío si el usuario no está autenticado
      return Stream.empty();
    }
  }
}
