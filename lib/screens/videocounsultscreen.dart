import 'dart:ui';

import 'package:finalproject/components/oncall.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLVideoConsultScreen extends StatefulWidget {
  const MLVideoConsultScreen({super.key});

  @override
  MLVideoConsultScreenState createState() => MLVideoConsultScreenState();
}

class MLVideoConsultScreenState extends State<MLVideoConsultScreen> {
  String call = 'Incoming Call';
  int currentWidget = 0;
  double setOpacity = 1.0;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    changeStatusColor(Colors.transparent);
  }

  @override
  void dispose() {
    super.dispose();
    changeStatusColor(mlPrimaryColor);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: boxDecorationWithRoundedCorners(
              backgroundColor: Colors.grey,
              decorationImage: const DecorationImage(image: AssetImage(ml_ic_video_consult), fit: BoxFit.cover),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(color: white.withOpacity(0.0)),
            ),
          ),
          Positioned(
            top: 150,
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 45.0,
                  backgroundImage: AssetImage(ml_ic_video_consult),
                ),
                8.height,
                Text('Dr. Stephen Chow', style: boldTextStyle(size: 18, color: whiteColor)),
                8.height,
                Text(call, style: secondaryTextStyle(color: whiteColor))
              ],
            ),
          ),
          Positioned(
            bottom: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    MaterialButton(
                      child: Image.asset(ml_ic_end_call, width: 50, height: 50),
                      onPressed: () {
                        setState(
                          () {
                            currentWidget++;
                            setOpacity = 0.0;
                            call = 'Decline Call';
                            goBackToMainScreen();
                          },
                        );
                      },
                    ),
                    8.height,
                    Text('Reject', style: secondaryTextStyle(color:   black ))
                  ],
                ),
                16.width,
                Column(
                  children: [
                    MaterialButton(
                      child: Container(
                        decoration: boxDecorationWithRoundedCorners(
                          backgroundColor: Colors.transparent,
                          borderRadius: radius(30),
                          border: Border.all(color:  black ),
                        ),
                        child: const Icon(
                          Icons.chat_outlined,
                          color:  black ,
                          size: 24,
                        ).paddingAll(10.0),
                      ),
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                    16.height,
                  ],
                ),
                16.width,
                Column(
                  children: [
                    MaterialButton(
                      child: Image.asset(ml_ic_receive_call, width: 50, height: 50),
                      onPressed: () {
                        setState(
                          () {
                            currentWidget++;
                            const MLOnCallComponent().launch(context);
                          },
                        );
                      },
                    ),
                    8.height,
                    Text('Confirm', style: secondaryTextStyle(color:  black))
                  ],
                ),
              ],
            ).opacity(opacity: setOpacity),
          ),
        ],
      ),
    );
  }

  Future<void> goBackToMainScreen() async {
    await 1.seconds.delay;
    finish(context);
  }
}
