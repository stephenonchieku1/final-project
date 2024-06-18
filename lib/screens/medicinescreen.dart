import 'package:finalproject/components/allmedicinecomponent.dart';
import 'package:finalproject/components/medicationinformation.dart';
import 'package:finalproject/screens/createnewmedicinescreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLMedicineScreen extends StatefulWidget {
  static String tag = '/MLMedicineScreen';
  final int? index;

  const MLMedicineScreen({super.key, this.index});

  @override
  MLMedicineScreenState createState() => MLMedicineScreenState();
}

class MLMedicineScreenState extends State<MLMedicineScreen> {
  List<String> title = ['List Medicine', 'Information'];
  List<Widget> data = [const MLAllMedicineComponent(), const MLMedicineInformationComponent()];
  List<String> button = ['Add new medicine +', 'Change Schedule'];

  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print(widget.index);
    }
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
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32),
                backgroundColor:  black ,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  8.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(title[widget.index!], style: boldTextStyle(size: 24)).expand(),
                      Icon(Icons.close, color: mlColorBlue).onTap(
                        () {
                          finish(context);
                        },
                      ),
                      8.width,
                    ],
                  ),
                  24.height,
                  data[widget.index!].validate().flexible(),
                ],
              ),
            ),
            AppButton(
              width: context.width(),
              color: mlPrimaryColor,
              child: Text(
                button[widget.index!].validate(),
                style: boldTextStyle(color: whiteColor),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                const MLCreateNewMedicine().launch(context);
              },
            ).paddingOnly(right: 16, left: 16, bottom: 16),
          ],
        ),
      ),
    );
  }
}
