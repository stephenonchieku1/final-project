import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PasswordChange extends StatefulWidget {
  const PasswordChange({super.key});

  @override
  State<PasswordChange> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          LottieBuilder.asset("assests/images/ticker.json"),
          
        ],
      )),
    );
  }
}
