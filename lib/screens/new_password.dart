import 'package:finalproject/router/router.dart';
import 'package:finalproject/screens/fade_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/components/custom_widgets.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:go_router/go_router.dart';


class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeAnimation(
                  delay: 1,
                  child: IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      size:35,
                    ),
                  ),
                  ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 1.3,
                      child: Text(
                        "Create new password",
                        style: Styles().titelTheme,
                      ),
                    ),
                    FadeAnimation(
                      delay: 1.6,
                      child: Text(
                        "Your new password must be unique from those previously used.",
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
                          hinttext: 'New password',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const FadeAnimation(
                        delay: 2.1,
                        child: CustomTextFormField(
                          hinttext: 'Confirm password',
                          obsecuretext: false,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        delay: 2.4,
                        child: CustomElevatedButton(
                          message: "Reset Password ",
                          function: () {
                            GoRouter.of(context)
                                .pushNamed(Routers.passwordchanges.name);
                          },
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),        
                  
            ],
          ),
        ),
      ),
    );
  }
}
