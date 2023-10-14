import 'package:flutter/material.dart';
import '../SelectStatus.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0), // Ajuste del padding aquí
          child: Text(
            'INICIAR SESIÓN',
            style: TextStyle(fontFamily: 'BreeSerif', color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 24.0),
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Usuario',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BreeSerif',
                    fontSize: 16.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                      suffixText: '@unmsm.edu.pe',
                    ),
                  ),
                ),
                Text(
                  'Contraseña',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'BreeSerif',
                    fontSize: 16.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectStatus())
              );// Redirige a la nueva pantalla
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF1E3983),
              padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 64.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text(
              'Entrar',
              style: TextStyle(
                fontFamily: 'BreeSerif',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}