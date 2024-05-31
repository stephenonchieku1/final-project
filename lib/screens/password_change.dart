import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fade_animation.dart';
import 'package:finalproject/components/custom_widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body:   SafeArea(child: Padding(
      padding: const EdgeInsets.all(10.0),
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           
           FadeAnimation(
            delay: 0.6,
            child: IconButton(onPressed: (){}, 
           icon: const Icon(
            CupertinoIcons.back,
           )
           ),
            ),
            const Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 0.9,
                      child: Text(
                        "Hello! Register to get  ",
                        style:TextStyle(
                              fontSize: 30,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.bold,
                             
                            ),
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.2,
                      child: Text(
                        "started",
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Urbanist",
                            fontWeight: FontWeight.bold,
                           
                          ),  
                      ),
                    ),
                  ],
                ),
              ),
        ],


       ),)) ,

    );
  }
}
