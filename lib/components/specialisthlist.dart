import 'package:finalproject/models/specialistdata2.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLSpecialistHorizontalList extends StatefulWidget {
  static String tag = '/MLSpecialistHorizontalList';

  const MLSpecialistHorizontalList({super.key});

  @override
  MLSpecialistHorizontalListState createState() => MLSpecialistHorizontalListState();
}

class MLSpecialistHorizontalListState extends State<MLSpecialistHorizontalList> {
  List<MLSpecialistData> listSpecialist = mlSpecialistDataDataList();

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
    return HorizontalList(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 8.0),
      wrapAlignment: WrapAlignment.spaceEvenly,
      itemCount: listSpecialist.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 4),
          padding: const EdgeInsets.all(16),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radius(12.0),
            border: Border.all(color: Colors.grey.shade100),
            backgroundColor: context.cardColor,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: boxDecorationWithRoundedCorners(
                 // backgroundColor: appStore.isDarkModeOn ? cardDarkColor : Colors.grey.shade50,
                  borderRadius: radius(12.0),
                ),
                child: Image.asset(listSpecialist[index].image.validate(), fit: BoxFit.fill, width: 48, height: 48),
              ),
              8.height,
              Text(listSpecialist[index].title.validate(), style: boldTextStyle(size: 14, color: mlColorDarkBlue)),
              4.height,
              Text(listSpecialist[index].subtitle.validate(), style: secondaryTextStyle()),
              4.height,
            ],
          ),
        );
      },
    );
  }
}
