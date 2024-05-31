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
           )), ),
        ],


       ),)) ,

    );
  }
}
