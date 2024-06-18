import 'package:finalproject/components/bottomnavigationbar.dart';
import 'package:finalproject/fragments/calendarfragment.dart';
import 'package:finalproject/fragments/chatfragment.dart';
import 'package:finalproject/fragments/homefragment.dart';
import 'package:finalproject/fragments/notificationfragment.dart';
import 'package:finalproject/fragments/profilefragement.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:flutter/material.dart';

class MLDashboardScreen extends StatefulWidget {
  const MLDashboardScreen({super.key});

  @override
  State<MLDashboardScreen> createState() => _MLDashboardScreenState();
}

class _MLDashboardScreenState extends State<MLDashboardScreen> {
   int currentWidget = 0;
  List<Widget> widgets = [
    const MlHomeFragment(),
    const MLChatFragment(),
    const MLCalendarFragment(),
    const MLNotificationFragment(),
    const MLProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    
  }

  @override
  void dispose() {
    changeStatusColor(mlPrimaryColor);
    super.dispose();
  }
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: widgets[currentWidget],
        bottomNavigationBar: Container(color: Colors.white, child: showBottomDrawer()),
      ),
    );
  }

  Widget showBottomDrawer() {
    return MLBottomNavigationBarWidget(
      index: currentWidget,
      onTap: (index) {
        setState(() {});
        currentWidget = index;
      },
    );
  }
}
