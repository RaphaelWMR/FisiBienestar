import 'dart:async';

import 'package:flutter/material.dart';
import './sign/Login.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()), // Redirige a la vista de inicio de sesión
      );
    });

    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}