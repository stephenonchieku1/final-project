import 'package:finalproject/components/custom_widgets.dart';
import 'package:finalproject/router/router.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'fade_animation.dart';


class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/img.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              child: Column(
                children: [
                  FadeAnimation(
                    delay: 1,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/main logo light color.png"))),
                    ),
                  ),
                  const FadeAnimation(
                    delay: 1.5,
                    child: Text(
                      "Flutter Spirit ❤️",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  FadeAnimation(
                    delay: 2,
                    child: CustomElevatedButton(
                      message: "Login",
                      function: () {
                        GoRouter.of(context).pushNamed(Routers.loginpage.name);
                      },
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    delay: 2.5,
                    child: ElevatedButton(
                        onPressed: () {
                          GoRouter.of(context)
                              .pushNamed(Routers.signup.name);
                        },
                        style: ButtonStyle(
                            side: const WidgetStatePropertyAll(
                                BorderSide(color: Colors.black)),
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            fixedSize: const WidgetStatePropertyAll(
                                Size.fromWidth(370)),
                            padding: const WidgetStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 20),
                            ),
                            backgroundColor:
                                const WidgetStatePropertyAll(Colors.white)),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Urbanist-SemiBold",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FadeAnimation(
                    delay: 2.5,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Continue as guest",
                          style: Styles().mediumTheme),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
