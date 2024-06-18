import 'package:finalproject/models/doctordata.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


import 'calendarcomponent.dart';

class MLScheduleApoointmentSheet extends StatefulWidget {
  static String tag = '/MLScheduleApoointmentSheet';

  const MLScheduleApoointmentSheet({super.key});

  @override
  MLScheduleApoointmentSheetState createState() => MLScheduleApoointmentSheetState();
}

class MLScheduleApoointmentSheetState extends State<MLScheduleApoointmentSheet> {
  List<MLDoctorData> doctorDataList = mlDoctorListDataList();
  List<String?> time = mlScheduleTimeList();
  int? selectedIndex = 0;
  String? selectedTime;

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
    return Container(
      height: context.height() * 0.90,
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: boxDecorationWithRoundedCorners(
             // backgroundColor: appStore.isDarkModeOn ? blackColor : white,
              borderRadius: radiusOnly(topRight: 24, topLeft: 24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: const Icon(Icons.close, color: Colors.blue).onTap(() {
                        finish(context);
                      }),
                    ).paddingOnly(right: 16.0, top: 16.0),
                    Row(
                      children: [
                        Container(
                          height: 54,
                          width: 54,
                          padding: const EdgeInsets.only(top: 4.0),
                          decoration: boxDecorationWithRoundedCorners(
                            backgroundColor: mlColorCyan,
                            borderRadius: radius(12.0),
                          ),
                          child: Image.asset((doctorDataList[0].image).validate(), fit: BoxFit.fill),
                        ),
                        8.width,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text((doctorDataList[0].title).validate(), style: boldTextStyle(size: 18)),
                            8.height,
                            Row(
                              children: [
                                Text((doctorDataList[0].subtitle).validate(), style: secondaryTextStyle()),
                                8.width,
                                RatingBarWidget(onRatingChanged: (double rating) {}, size: 16, rating: 3.5),
                                4.width,
                                Text('4.8', style: secondaryTextStyle()),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ).paddingOnly(right: 16.0, left: 16.0),
                    16.height,
                    const Divider(height: 0.5),
                    Row(
                      children: [
                        Text('Schedule', style: boldTextStyle()).expand(),
                        Row(
                          children: [
                            Text('October 2021', style: secondaryTextStyle()),
                            Icon(Icons.arrow_drop_down_sharp, color: mlColorLightGrey),
                          ],
                        ),
                      ],
                    ).paddingAll(16.0),
                    const MLCalenderComponent(),
                    Text('Visiting Hours', style: boldTextStyle()).paddingAll(16.0),
                    Wrap(
                      runSpacing: 8.0,
                      spacing: 8.0,
                      children: time.map((e) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedTime = e;
                              if (kDebugMode) {
                                print('$selectedTime : $time');
                              }
                            });
                          },
                          child: Container(
                            width: context.width() * 0.45,
                            padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0, bottom: 8.0),
                            decoration: boxDecorationWithRoundedCorners(
                              backgroundColor: selectedTime == e ? mlColorDarkBlue : Colors.blue.shade50,
                            ),
                            child: Text(
                              e.validate(),
                              style: boldTextStyle(size: 14, color: selectedTime == e ? white : mlColorDarkBlue),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }).toList(),
                    ).center(),
                  ],
                ),
              ],
            ),
          ),
          AppButton(
            width: context.width(),
            color: mlPrimaryColor,
            onTap: () {
              //
            },
            child: Text('Continue >', style: boldTextStyle(color: white), textAlign: TextAlign.center),
          ).paddingOnly(right: 16, left: 16, bottom: 16),
        ],
      ),
    );
  }
}
