import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        title: Text(
          '¿Qué deseas hacer?',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'BreeSerif', color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
                        Icon(
                          Icons.event,
                          size: 40.0,
                          color: Color(0xFF1E3983),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Agendar una cita',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
                        Icon(
                          Icons.calendar_today,
                          size: 40.0,
                          color: Color(0xFF1E3983),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Ver mis citas',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
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
                        Icon(
                          Icons.access_time,
                          size: 40.0,
                          color: Color(0xFF1E3983),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Verificar disponibilidad',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(

                  child: ElevatedButton(
                    onPressed: () {},
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
                        Icon(
                          Icons.exit_to_app,
                          size: 40.0,
                          color: Color(0xFF1E3983),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Cerrar sesión',
                          style: TextStyle(
                            fontFamily: 'BreeSerif',
                            color: Colors.black,
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