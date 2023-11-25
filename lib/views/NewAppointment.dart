import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class AppointmentForm extends StatefulWidget {
  @override
  NewAppointment createState() => NewAppointment();
}

class NewAppointment extends State<AppointmentForm> {
  DateTime? selectedDate;
  String? selectedTime;
  String? selectedModality;

  final List<String> availableTimes = [
    '9:00 AM', '10:00 AM', '11:00 AM', '2:00 PM', '3:00 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        title: Text(
          'Agendar Cita',
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
            GestureDetector(
              onTap: () {
                DatePicker.showDatePicker(
                  context,
                  showTitleActions: true,
                  minTime: DateTime.now(),
                  maxTime: DateTime(2101),
                  onConfirm: (date) {
                    setState(() {
                      selectedDate = date;
                    });
                  },
                  currentTime: selectedDate ?? DateTime.now(),
                  locale: LocaleType.es, // Cambia a tu preferencia de idioma
                );
              },
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Fecha',
                  hintText: selectedDate == null
                      ? 'Selecciona una fecha'
                      : "${selectedDate?.toLocal()}".split(' ')[0],
                  prefixIcon: Icon(Icons.calendar_today, color: Color(0xFF1E3983)),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedTime,
                    decoration: InputDecoration(
                      labelText: 'Hora',
                      hintText: 'Selecciona una hora',
                      prefixIcon: Icon(Icons.access_time, color: Color(0xFF1E3983)),
                    ),
                    items: availableTimes.map((time) {
                      return DropdownMenuItem<String>(
                        value: time,
                        child: Text(time),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedTime = value;
                      });
                    },
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedModality,
                    decoration: InputDecoration(
                      labelText: 'Modalidad',
                      hintText: 'Selecciona una modalidad',
                      prefixIcon: Icon(Icons.room, color: Color(0xFF1E3983)),
                    ),
                    items: ['Virtual', 'Presencial'].map((modality) {
                      return DropdownMenuItem<String>(
                        value: modality,
                        child: Text(modality),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedModality = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                labelText: 'Descripción de la cita',
                hintText: 'De qué vas a hablar?',
                prefixIcon: Icon(Icons.text_fields, color: Color(0xFF1E3983)),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle appointment scheduling
                      // Access selectedDate, selectedTime, selectedModality
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: EdgeInsets.all(16.0),
                    ),
                    child: Text(
                      'Agendar Cita',
                      style: TextStyle(
                        fontFamily: 'BreeSerif',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle appointment cancellation
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding: EdgeInsets.all(16.0),
                    ),
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        fontFamily: 'BreeSerif',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}