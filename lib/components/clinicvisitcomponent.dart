import 'package:finalproject/models/departmentdata.dart';
import 'package:finalproject/screens/purchasemorescreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:finalproject/utils/common.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLClinicVisitComponent extends StatefulWidget {
  const MLClinicVisitComponent({super.key});

  @override
  MLClinicVisitComponentState createState() => MLClinicVisitComponentState();
}

class MLClinicVisitComponentState extends State<MLClinicVisitComponent> {
  static String tag = '/MLClinicVisitComponent';
  List<MLDepartmentData> departmentList = mlServiceListDataList();
  int? selectedIndex = 0;

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
    return SingleChildScrollView(
      child: Column(
        children: [
          16.height,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Clinic Visit', style: boldTextStyle(size: 24)),
                  8.height,
                  Text('Find the service you are', style: secondaryTextStyle()),
                  16.height,
                ],
              ).expand(),
              mlRoundedIconContainer(Icons.search, mlColorBlue),
              16.width,
              mlRoundedIconContainer(Icons.calendar_view_day_outlined, mlColorBlue),
            ],
          ).paddingOnly(right: 16.0, left: 16.0),
          8.height,
          const PurchaseMoreScreen().withHeight(context.height() * 0.6),
        ],
      ),
    );
  }
}
