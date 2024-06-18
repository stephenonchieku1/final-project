import 'package:finalproject/components/profileformcomponent.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MLAddDependentScreen extends StatefulWidget {
  static String tag = '/MLAddDependentScreen';

  const MLAddDependentScreen({super.key});

  @override
  MLAddDependentScreenState createState() => MLAddDependentScreenState();
}

class MLAddDependentScreenState extends State<MLAddDependentScreen> {
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
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: context.height(),
              padding: const EdgeInsets.all(16.0),
              decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32),
                //backgroundColor: appStore.isDarkModeOn ? black : white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    16.height,
                    mlBackToPreviousWidget(context,  white ),
                    34.height,
                    Text('Add A Dependent', style: boldTextStyle(size: 24)),
                    16.height,
                    const MLProfileFormComponent(),
                    48.height,
                  ],
                ),
              ),
            ),
            AppButton(
              width: context.width(),
              color: colorDarkBlue,
              child: Text("Save", style: boldTextStyle(color: white)),
              onTap: () {
                finish(context);
              },
            ).paddingOnly(right: 16, left: 16, bottom: 16),
          ],
        ),
      ),
    );
  }
}
