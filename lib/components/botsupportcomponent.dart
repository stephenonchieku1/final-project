import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MLBotSupportComponent extends StatefulWidget {
  static String tag = '/MLBotSupportComponent';

  const MLBotSupportComponent({super.key});

  @override
  MLBotSupportComponentState createState() => MLBotSupportComponentState();
}

class MLBotSupportComponentState extends State<MLBotSupportComponent> {
  List<String> botsData = <String>['Tony Bot', 'Dr. Heldi Kulm'];

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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Available Bots', style: boldTextStyle()),
          16.height,
         // MLChatListComponent(botsData, Colors.yellow, const MLBotScreen()),
        ],
      ),
    );
  }
}
