import 'package:flutter/material.dart';

class Trialpage extends StatefulWidget {
  const Trialpage({super.key});

  @override
  State<Trialpage> createState() => _TrialpageState();
}

class _TrialpageState extends State<Trialpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
      Column(
        children: [
          Padding(padding: const EdgeInsets.all(10.0),
           child:  Text( "trialpage",
           style:  TextStyle(
            fontSize: 
          50.0,
            fontFamily: 'Urbanist',
             color: Colors.pink[800],
          ),),
               ),
        ],
      ));
  }
}