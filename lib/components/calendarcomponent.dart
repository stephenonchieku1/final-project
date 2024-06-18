import 'package:finalproject/styles/styles.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLCalenderComponent extends StatefulWidget {
  static String tag = '/MLCalenderComponent';

  const MLCalenderComponent({super.key});

  @override
  MLCalenderComponentState createState() => MLCalenderComponentState();
}

class MLCalenderComponentState extends State<MLCalenderComponent> {
  DateTime selectedDate = DateTime.now();

  int currentDateSelectedIndex = 0;
  ScrollController scrollController = ScrollController();

  List<String> listOfMonths = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  List<String> listOfDays = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

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
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 0);
        },
        itemCount: 365,
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 70,
            width: 60,
            alignment: Alignment.center,
            decoration: boxDecorationWithRoundedCorners(
              backgroundColor:
                       scaffoldDarkColor,
                      
              border: Border.all(color: Colors.grey.shade100),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listOfDays[DateTime.now().add(Duration(days: index)).weekday - 1].toString(),
                  style: secondaryTextStyle(size: 16, color: currentDateSelectedIndex == index ? white : mlColorBlue),
                ),
                4.height,
                Text(
                  DateTime.now().add(Duration(days: index)).day.toString(),
                  style: boldTextStyle(
                      size: 22,
                      color: white,
                  )         
                ),
                4.height,
              ],
            ),
          ).paddingLeft(8.0).onTap(
            () {
              setState(
                () {
                  currentDateSelectedIndex = index;
                  selectedDate = DateTime.now().add(Duration(days: index));
                },
              );
            },
          );
        },
      ),
    );
  }
}
