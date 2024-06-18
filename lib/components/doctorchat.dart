import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLDoctorChatComponent extends StatefulWidget {
  static String tag = '/MLDoctorChatComponent';

  const MLDoctorChatComponent({super.key});

  @override
  MLDoctorChatComponentState createState() => MLDoctorChatComponentState();
}

class MLDoctorChatComponentState extends State<MLDoctorChatComponent> {
  int notificationCounter = 3;
  List<String> unreadData = <String>['Dr. Miranda Kerr', 'Dr. Heldi Kulm '];
  List<String> otherData = <String>['Dr.Stephen', 'Dr. Miranda Kerr', 'Dr. Miranda Kerr'];

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Unread', style: boldTextStyle()),
          16.height,
          //MLChatListComponent(unreadData,scaffoldDarkColor , const MLChatScreen(), data: const [],),
          const Divider(height: 32),
          Text('Other', style: boldTextStyle()),
          16.height,
         // MLChatListComponent(otherData,scaffoldDarkColor , const MLChatScreen()),
        ],
      ).paddingAll(16.0),
    );
  }
}
