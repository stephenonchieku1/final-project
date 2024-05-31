import 'package:flutter/material.dart';
import  'fade_animation.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(10.0)),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            Padding(padding: EdgeInsets.all(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              ]
            ),
            Padding(padding: EdgeInsets.all(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              ]
            ),
            const SizedBox(
              Heigt(15),
            ),
            Padding(padding: EdgeInsets.all(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              ]
            )
          ],
        ),
      ),
    );
  }
}
