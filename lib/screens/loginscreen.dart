import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'fade_animation.dart';
import 'package:flutter_svg/svg.dart';
import 'package:finalproject/components/custom_widgets.dart';
import 'package:finalproject/router/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeAnimation(
                delay: 1,
                child: IconButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .pushNamed(Routers.registration.name);
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      size: 35,
                    )),
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
                    child: Text("to see you, Again!",
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "urbanist",
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                child: Column(
                  children: [
                    const FadeAnimation(
                        delay: 1.9,
                        child: CustomTextFormField(
                          hinttext: 'Enter your Email',
                          obsecuretext: false,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    FadeAnimation(
                      delay: 2.2,
                      child: TextFormField(
                        obscureText: flag ? true : false,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(18),
                            hintText: "Enter your password",
                            hintStyle: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Urbanist-Medium',
                              color: Color(0xFF8391A1),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(12)),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon:
                                    const Icon(Icons.remove_red_eye_outlined))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     FadeAnimation(
                        delay: 2.2,
                        child: Align(
                          alignment: Alignment.centerRight,
                           child: GestureDetector(
                                onTap: () {
                                  GoRouter.of(context)
                                      .pushNamed(Routers.forgetpassword.name);
                                },
                          child: const Text("Forgot  Password ?",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Urbanist-SemiBold",
                             )  )),
                        )), 
                            const SizedBox(
                              height: 10,
                            ),
                     FadeAnimation(
                      delay: 2.8,
                      child: CustomElevatedButton(
                        message: "trialpage",
                        function:
                        (){
                           GoRouter.of(context)
                           .pushNamed((Routers.dashboardscreen.name));
                        } ,
                        color: Colors.black,
                      ),
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
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                          child: Column(
                            children: [
                              const FadeAnimation(
                                delay: 2.2,
                                child: Text(
                                  "Or Log With",
                                  style: TextStyle(
                                      fontFamily: 'Urbanist-semibold',
                                      fontSize: 15),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              FadeAnimation(
                                delay: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, right: 30, left: 30),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/facebook_ic (1).svg"),
                                      SvgPicture.asset(
                                          "assets/images/google_ic-1.svg"),
                                      Image.asset(
                                        "assets/images/Vector.png",
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),

                    FadeAnimation(
                      delay: 2.8,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "Don’t have an account?",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Urbanist-Medium',
                                color: Color(0xFF8391A1),
                              ),
                            ),
                            
                            TextButton(
                                onPressed: () {
                                  GoRouter.of(context)
                                      .pushNamed(Routers.signup.name);
                                },
                                child: const Text(
                                  "Register Now",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Urbanist-Bold",
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 72, 151, 151)),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
    )));
  }
}
