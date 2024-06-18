//import 'package:finalproject/models/MLNotificationData.dart';
import 'package:finalproject/models/notificationdata.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLNotificationFragment extends StatefulWidget {
  static String tag = '/MLNotificationFragment';

  const MLNotificationFragment({super.key});

  @override
  MLNotificationFragmentState createState() => MLNotificationFragmentState();
}

class MLNotificationFragmentState extends State<MLNotificationFragment> {

   List<MLNotificationData> data = mlNotificationDataList();
  bool checked = false;
  int? newNotification = 3;
  Color customColor = colorBlue;
  bool valuefirst = false;
  bool valuesecond = false;

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
            //backgroundColor: appStore.isDarkModeOn ? black : white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(mlNotification, style: boldTextStyle(size: 20)),
                      8.width,
                      checked == false
                          ? Container(
                              padding: const EdgeInsets.all(8.0),
                              decoration: boxDecorationWithRoundedCorners(
                                backgroundColor: Colors.blue.shade500,
                                boxShape: BoxShape.circle,
                              ),
                              child: Text(newNotification.toString(),
                                  style: primaryTextStyle(color: white)),
                            ).onTap(() {
                              openBottomSheet();
                            })
                          : Container(),
                    ],
                  ).expand(),
                  Container(
                      padding: const EdgeInsets.all(6),
                      decoration: boxDecorationWithRoundedCorners(
                        boxShape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        backgroundColor: context.cardColor,
                      ),
                      child:
                          Icon(Icons.settings, color: colorDarkBlue, size: 20)),
                ],
              ).paddingAll(16.0),
              // PurchaseMoreScreen().expand(),
              8.height,
            ],
          ),
        ),
      ),
    );
  }

  void openBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: boxDecorationWithRoundedCorners(
              borderRadius: radiusOnly(topRight: 12, topLeft: 12),
              // backgroundColor: appStore.isDarkModeOn ? blackColor : white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: context.width() / 2.5,
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  decoration: boxDecorationWithRoundedCorners(
                    backgroundColor: Colors.blue,
                    borderRadius: radius(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mark all read",
                          style: boldTextStyle(color: white, size: 14)),
                      4.width,
                      const Icon(Icons.check_box, color: white, size: 20).onTap(
                        () {
                          setState(
                            () {
                              checked = true;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: context.width() / 2.5,
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  decoration: boxDecorationWithRoundedCorners(
                    border: Border.all(color: Colors.blue),
                    borderRadius: radius(12.0),
                    backgroundColor: context.cardColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Delete all",
                          style: boldTextStyle(color: Colors.blue, size: 14)),
                      4.width,
                      const Icon(Icons.delete_outline,
                              color: Colors.blue, size: 20)
                          .paddingBottom(4.0),
                    ],
                  ),
                ).onTap(
                  () {
                    finish(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
