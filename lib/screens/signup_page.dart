import 'package:finalproject/screens/fade_animation.dart';
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
    return const Scaffold(
      body: SafeArea(child: Column(
        children: [
          //LottieBuilder.asset("assests/images/ticker.json"),
          FadeAnimation(
             delay: 0,
            child: Text(            
            'password has been changed !!',
            style: TextStyle(
               fontSize: 25,
                fontFamily: "Urbanist",
                fontWeight: FontWeight.bold,
            )
            ),
          ),
            SizedBox(height: 20,),
            FadeAnimation(
               delay:0,
               child: Text('Password has been changed successfully',
                    style: TextStyle(
                      fontSize: 20,
                        fontFamily: 'Urbanist-Bold',
                          fontWeight: FontWeight.w500,
                          color: Colors.black 
            ),),)

        ],
      )),
    );
  }
}
