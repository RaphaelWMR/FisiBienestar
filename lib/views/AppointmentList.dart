import 'package:flutter/material.dart';

class AppointmentListScreen extends StatelessWidget {
  final List<Appointment> appointments = [
    Appointment(
      date: DateTime(2023, 11, 30),
      time: '10:00 AM',
      modality: 'Virtual',
      description: 'Revisión general de salud',
    ),
    Appointment(
      date: DateTime(2023, 12, 5),
      time: '2:00 PM',
      modality: 'Presencial',
      description: 'Consulta médica',
    ),
    Appointment(
      date: DateTime(2023, 12, 10),
      time: '11:00 AM',
      modality: 'Virtual',
      description: 'Seguimiento tratamiento',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        title: Text(
          'Lista de Citas',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'BreeSerif', color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: appointments.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        'Cita el ${appointments[index].formattedDate}',
                        style: TextStyle(fontFamily: 'BreeSerif'),
                      ),
                      subtitle: Text(
                        'Hora: ${appointments[index].time}\nModalidad: ${appointments[index].modality}',
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to the appointment form
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1E3983),
                padding: EdgeInsets.all(16.0),
              ),
              child: Text(
                'Volver al Formulario',
                style: TextStyle(
                  fontFamily: 'BreeSerif',
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Appointment {
  final DateTime date;
  final String time;
  final String modality;
  final String description;

  Appointment({
    required this.date,
    required this.time,
    required this.modality,
    required this.description,
  });

  String get formattedDate => "${date.toLocal()}".split(' ')[0];
}
