import 'package:finalproject/screens/fade_animation.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:finalproject/router/router.dart';
import 'package:finalproject/components/custom_widgets.dart';

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
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding:  const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(
                          delay: 1,
                          child: Text(
                            "Forgot Password",
                            style: Styles().titelTheme,
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
                  ),
                   Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  child: Column(
                    children: [
                      const FadeAnimation(
                        delay: 1.9,
                        child: CustomTextFormField(
                          hinttext: 'Enter your email',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        delay: 2.1,
                        child: CustomElevatedButton(
                          message: "Send Code ",
                          function: () {
                            GoRouter.of(context)
                                .pushNamed(Routers.otpverification.name);
                          },
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               const Spacer(),
              FadeAnimation(
                delay: 2.4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: Styles().hintText,
                      ),
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context)
                                .pushNamed(Routers.signuppage.name);
                          },
                          child: Text(
                            "Register Now",
                            style: Styles().mediumTheme,
                          )),
                    ],
                  ),
                ),
              )
                ],
              ))),
    );
  }
}
