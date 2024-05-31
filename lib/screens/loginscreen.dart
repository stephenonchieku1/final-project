import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
          padding:  EdgeInsets.all(10.0),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            FadeAnimation(
               delay:1,
               child: Text("clicked"),
               ),
             Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1.3,
                      child: Text(
                        "Welcome back! Glad ",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "urbanist",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.6,
                      child: Text(
                        "to see you, Again!",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "urbanist",
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  ],
                ),
              ),     
          ],
        )),
      ),
    );
  }
}
