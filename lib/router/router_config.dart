import 'package:finalproject/screens/loginscreen.dart';
import 'package:finalproject/screens/new_password.dart';
import 'package:finalproject/screens/otp_verification.dart';
import 'package:finalproject/screens/password_change.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:finalproject/screens/signup_page.dart';
import 'package:finalproject/router/router.dart';
import 'package:finalproject/screens/forget_password.dart';
import 'package:finalproject/screens/registration.dart';
import 'package:finalproject/screens/trialpage.dart';

  final router = GoRouter(
    routes: [
      GoRoute(
    path: Routers.registration.path,
    name: Routers.registration.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: Registration());
    },
  ),
  
      GoRoute(
        path: Routers.trialpage.path,
        name: Routers.trialpage.name,
        pageBuilder: (contect, state){
          return const CupertinoPage(child: Trialpage());
        },
      ),

      GoRoute(
        path: Routers.loginpage.path,
        name: Routers.loginpage.name,
        pageBuilder: (contect, state){
          return const CupertinoPage(child: LoginScreen());
        },
      ),
  GoRoute(
    path: Routers.signup.path,
    name: Routers.signup.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: SignupPage());
    },
  ),
 GoRoute(
    path: Routers.forgetpassword.path,
    name: Routers.forgetpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: ForgetPassword());
    },
  ),
GoRoute(
    path: Routers.newpassword.path,
    name: Routers.newpassword.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: NewPassword());
    },
  ),
  GoRoute(
    path: Routers.otpverification.path,
    name: Routers.otpverification.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: OtpVerification());
    },
  ),
  GoRoute(
    path: Routers.passwordchanges.path,
    name: Routers.passwordchanges.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: PasswordChange());
    },
  )
    ]
  );