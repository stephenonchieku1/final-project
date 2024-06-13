 import 'package:flutter/material.dart';
 import 'package:finalproject/Appointment/appointmentmodel.dart';

class AppointmmentDetailPage extends StatefulWidget {
  const AppointmmentDetailPage({super.key, required this.appointment});
    final Appointment appointment;
  @override
  State<AppointmmentDetailPage> createState() => _AppointmmentDetailPageState();
}

class _AppointmmentDetailPageState extends State<AppointmmentDetailPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Appointment Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: ${widget.appointment.title}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              'Description: ${widget.appointment.description}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Date: ${widget.appointment.date}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
