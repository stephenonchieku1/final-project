import 'package:finalproject/screens/fade_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FadeAnimation(
                          delay: 1,
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontSize: 30,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        FadeAnimation(
                          delay: 1,
                          child: Text(
                            "Please Enter the email address linked to your email",
                            style: Styles().mediumBlack,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ))),
    );
  }
}
