import 'package:flutter/material.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:nb_utils/nb_utils.dart';

class AppointmentScreen extends StatefulWidget {
  static String tag = '/AppointmentScreen';

  const AppointmentScreen({super.key});

  @override
  AppointmentScreenState createState() => AppointmentScreenState();
}

class AppointmentScreenState extends State<AppointmentScreen> {
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
        backgroundColor: primaryColor,
        body: Container(
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radiusOnly(topRight: 32),
            backgroundColor:  Colors.black,
          ),
          child: Column(
            children: [
              8.height,
              Row(
                children: [
                  mlBackToPreviousWidget(context, Colors.white ),
                  Text('Appointment Details', style: boldTextStyle(size: 22)),
                ],
              ).paddingAll(16),
              //Flexible(child: PurchaseMoreScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
