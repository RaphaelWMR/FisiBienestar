import 'package:flutter/material.dart';
import './Home.dart';

class SelectStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0), // Ajuste del padding aquí
          child: Text(
            'Hola, Juan Luis, ingresa tu situación académica.',
            style: TextStyle(fontFamily: 'BreeSerif', color: Colors.white),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Alineación de los botones
              children: [
                Expanded( // Hace que el botón ocupe el espacio disponible
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home())
                      );// Redirige a la nueva pantalla
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 8,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/regular.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Regular',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Color(0xFF1E3983),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.0), // Espacio entre botones
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home())
                      );// Redirige a la nueva pantalla
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.all(16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 8,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/observado.png',
                          height: 80.0,
                          width: 80.0,
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Observado',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Color(0xFF1E3983),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
