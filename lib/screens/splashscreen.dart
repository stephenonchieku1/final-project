import 'package:finalproject/screens/walkthroughscreen.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLSplashScreen extends StatefulWidget {
  const MLSplashScreen({super.key});

  @override
  State<MLSplashScreen> createState() => _MLSplashScreenState();
}

class _MLSplashScreenState extends State<MLSplashScreen> {
  @override
  void initState() {
    super.initState();
    //
    init();
  }

  Future<void> init() async {
    await 3.seconds.delay;
    finish(context);
    const MLWalkThroughScreen().launch(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(ml_ic_medilab_logo, height: 150, width: 150, fit: BoxFit.fill).center(),
    );
  }
}

