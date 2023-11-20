import 'package:firebase_auth/firebase_auth.dart';
import "package:myapp/src/widgets_globales/toast.dart";

class firebaseauthservice {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> registarteemailycontrasena(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } catch (e) {
      print("algo salio mal");
    }
    return null;
  }

  Future<User?> entradaconemailycontrasena(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        showtoast(mensaje: "hola esta es una prueba");
      }
    }
    return null;
  }

  Future<User?> enviaremaildeverificacion(String email) async {
    try {
      final User user = _auth.currentUser!;
      await user.sendEmailVerification();
    } catch (e) {
      print("el correo no se pudo enviar");
    }

    return null;
  }
}
