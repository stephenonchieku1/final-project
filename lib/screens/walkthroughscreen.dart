import 'package:finalproject/models/walkthroughdata.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


import 'loginscreen2.dart';
 
 class MLWalkThroughScreen extends StatefulWidget {
  const MLWalkThroughScreen({super.key});
 static String tag = '/MLWalkThroughScreen';
  @override
  State<MLWalkThroughScreen> createState() => _MLWalkThroughScreenState();
}

class _MLWalkThroughScreenState extends State<MLWalkThroughScreen> {
  PageController controller = PageController();

  List<MLWalkThroughData> list = mlWalkThroughDataList();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    changeStatusColor(mlPrimaryColor);
  }

  @override
  void dispose() {
    super.dispose();
    changeStatusColor( scaffoldDarkColor );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mlPrimaryColor,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: list.map(
              (e) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: boxDecorationWithRoundedCorners(
                        boxShape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.greenAccent, Colors.blue.shade600],
                        ),
                      ),
                      height: 270,
                      width: 230,
                      child: commonCachedNetworkImage(e.imagePath.validate(), fit: BoxFit.contain),
                    ),
                    48.height,
                    Text(e.title.validate(), style: boldTextStyle(size: 24, color: whiteColor)),
                    16.height,
                    Text(
                      e.subtitle.validate(),
                      style: secondaryTextStyle(color: whiteColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ).paddingAll(16.0);
              },
            ).toList(),
          ),
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DotIndicator(pageController: controller, pages: list),
                AppButton(
                  onTap: () {
                    return const MLLoginScreen().launch(context);
                  },
                  color: white,
                  child: Text(mlGet_started, style: boldTextStyle(color: mlPrimaryColor)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 16,
            child: Text(mlSkip, style: boldTextStyle(color: whiteColor)).paddingOnly(top: 8, right: 8).onTap(
              () {
                const MLLoginScreen().launch(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
