import 'package:finalproject/components/specialistvlist.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MLSpecialistScreen extends StatefulWidget {
  static String tag = '/MLSpecialistScreen';

  const MLSpecialistScreen({super.key});

  @override
  MLSpecialistScreenState createState() => MLSpecialistScreenState();
}

class MLSpecialistScreenState extends State<MLSpecialistScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mlPrimaryColor,
        body: Container(
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radiusOnly(topRight: 32),
            backgroundColor:  black ,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              8.height,
              Row(
                children: [
                  8.width,
                  const Icon(Icons.arrow_back_ios, size: 22).onTap(
                    () {
                      finish(context);
                    },
                  ),
                  8.width,
                  Text('Specialist', style: boldTextStyle(size: 20)).expand(),
                ],
              ),
              16.height,
              const MLSpecialistVListComponent().expand()
            ],
          ).paddingAll(16),
        ),
      ),
    );
  }
}
