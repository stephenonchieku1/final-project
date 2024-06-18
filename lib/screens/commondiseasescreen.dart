import 'package:finalproject/components/commondiseaselist.dart';
import 'package:finalproject/models/diseasedata.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:finalproject/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLCommonDiseaseScreen extends StatefulWidget {
  static String tag = '/MLCommonDiseaseScreen';

  const MLCommonDiseaseScreen({super.key});

  @override
  MLCommonDiseaseScreenState createState() => MLCommonDiseaseScreenState();
}

class MLCommonDiseaseScreenState extends State<MLCommonDiseaseScreen> {
  int i = 0;
  List<MLDiseaseData> data = mlDiseaseDataList();

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
          padding: const EdgeInsets.all(16.0),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radiusOnly(topRight: 32),
            backgroundColor: black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              8.height,
              Row(
                children: [
                  8.width,
                  mlBackToPreviousWidget(context,  white ),
                  8.width,
                  Text('Common Disesase', style: boldTextStyle(size: 24)).expand(),
                ],
              ),
              16.height,
              const MLCommonDiseaseListComponent().expand()
            ],
          ),
        ),
      ),
    );
  }
}
