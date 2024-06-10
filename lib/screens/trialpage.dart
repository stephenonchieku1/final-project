import 'package:flutter/material.dart';
import 'package:finalproject/models/trialpage.dart';
import 'package:finalproject/service/trialpage.dart';
import 'package:finalproject/screens/appointmentscreen.dart';
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
      body:SafeArea(child: AppointmentScreen()  )
      );
  }
}