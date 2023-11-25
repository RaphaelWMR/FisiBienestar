import 'package:flutter/material.dart';

class AppointmentAvailabilityScreen extends StatefulWidget {
  @override
  _AppointmentAvailabilityScreenState createState() =>
      _AppointmentAvailabilityScreenState();
}

class _AppointmentAvailabilityScreenState
    extends State<AppointmentAvailabilityScreen> {
  final List<String> workDays = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes'];
  final List<String> workHours = [
    '9:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
    '4:00 PM',
  ];

  Map<String, List<String>> availableTimes = {};

  @override
  void initState() {
    super.initState();
    // Initialize available times for each day with all work hours initially
    for (String day in workDays) {
      availableTimes[day] = List.from(workHours);
    }

    // Simulate some unavailable time slots (for example, Mondays at 9:00 AM and Fridays at 4:00 PM)
    availableTimes['Lunes']!.remove('9:00 AM');
    availableTimes['Viernes']!.remove('4:00 PM');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1E3983),
        title: Text(
          'Disponibilidad de Citas',
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
            Text(
              'Horario de Trabajo: Lunes a Viernes, 9:00 AM - 4:00 PM',
              style: TextStyle(fontFamily: 'BreeSerif', fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: workDays.length * workHours.length,
                itemBuilder: (context, index) {
                  final dayIndex = index ~/ workHours.length;
                  final hourIndex = index % workHours.length;
                  final day = workDays[dayIndex];
                  final time = workHours[hourIndex];

                  return ElevatedButton(
                    onPressed: () {
                      if (availableTimes[day]!.contains(time)) {
                        // Handle selecting time slot
                        // You can navigate to the appointment form and pass the selected day and time
                        Navigator.pop(context, {'day': day, 'time': time});
                      } else {
                        // Show some indication that the time slot is unavailable (e.g., red color)
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('El horario seleccionado no está disponible.'),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: availableTimes[day]!.contains(time)
                          ? Colors.green
                          : Colors.red,
                      padding: EdgeInsets.all(16.0),
                    ),
                    child: Text(
                      '$day\n$time',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'BreeSerif',
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AppointmentAvailabilityScreen(),
  ));
}
