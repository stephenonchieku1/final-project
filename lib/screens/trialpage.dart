import 'package:finalproject/Appointment/appointmentform.dart';
import 'package:flutter/material.dart';
class Trialpage extends StatefulWidget {
  const Trialpage({super.key});

  @override
  State<Trialpage> createState() => _TrialpageState();
}

class _TrialpageState extends State<Trialpage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,     
      body:SafeArea(child: Appointmentform()  )
      );
  }
}