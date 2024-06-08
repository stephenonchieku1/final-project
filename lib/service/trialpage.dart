import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:finalproject/models/trialpage.dart';

class AppointmentProvider with ChangeNotifier {
  final List<Appointment> _appointments = [];
  final Uuid _uuid =  const Uuid();

  List<Appointment> get appointments => [..._appointments];

  void addAppointment(String title, DateTime date) {
    final newAppointment = Appointment(
      id: _uuid.v4(), 
      title: title,
       date: date);
    _appointments.add(newAppointment);
    notifyListeners();
  }

  void updateAppointment(String id, String title, DateTime date) {
    final index = _appointments.indexWhere(
      (appt) => appt.id == id);
    if (index != -1) {
      _appointments[index] = Appointment(
        id: id, 
        title: title,
         date: date);
      notifyListeners();
    }
  }

  void deleteAppointment(String id) {
    _appointments.removeWhere((appt) => appt.id == id);
    notifyListeners();
  }
}
