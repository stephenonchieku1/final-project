import 'package:flutter/material.dart';
import  'fade_animation.dart';
import 'package:finalproject/components/custom_widgets.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: Colors.blue,
      body: SafeArea(
        child: Padding(
          padding:  const EdgeInsets.all(10.0),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            const FadeAnimation(
               delay:1,
               child: Text("clicked"),
               ),
             const Padding(
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
              Padding(padding: const EdgeInsets.all(12.0),
              child: Form(child: Column(children: [
                const FadeAnimation( delay: 1,
                child: CustomTextFormField(
                  hinttext: 'Enter your Email',
                   obsecuretext: false,
                   )
                   ),
                   const SizedBox(
                    height: 10,
                   ),
                   const FadeAnimation(
                    delay: 1,
                    child: Align(
                      alignment: Alignment.centerRight, 
                       child: Text("Enter Password ?", 
                       style:  TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Urbanist-SemiBold",
                       )
                       ), 
                    )
                    ),
                    const SizedBox(
                    height: 10,
                   ),
                   FadeAnimation(
                     delay: 2.8,
                    child: CustomElevatedButton(
                      message: "login",
                      function: () {
                            if (flag) {
                              setState(() {
                                flag = false;
                              });
                            } else {
                              setState(() {
                                flag = true;
                              });
                            }
                          },
                        color: Colors.black,
                       ),
                    ),
              ],
              ),
              ),
              ) ,
              const SizedBox(
                height: 15,
              )
          ],
        )),
      ),
    );
  }
}
