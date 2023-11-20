import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showtoast({required String mensaje}) {
  Fluttertoast.showToast(
      msg: mensaje,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      fontSize: 16,
      textColor: Colors.black,
      backgroundColor: Colors.white);
}
