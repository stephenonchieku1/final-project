import 'package:finalproject/components/countrypickercomponent.dart';
import 'package:finalproject/components/vaccines.dart';

import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLCovidScreen extends StatefulWidget {
  static String tag = '/MLCovidScreen';

  const MLCovidScreen({super.key});

  @override
  MLCovidScreenState createState() => MLCovidScreenState();
}

class MLCovidScreenState extends State<MLCovidScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mlPrimaryColor,
        body: Column(
          children: [
            Row(
              children: [
                mlBackToPreviousIcon(context, white),
                8.width,
                Text('Covid-19', style: boldTextStyle(color: whiteColor, size: 20)).expand(),
                Row(
                  children: [
                    Image.asset(ml_ic_icon_help, width: 16, height: 16),
                    Text('Help', style: secondaryTextStyle(color: white, size: 16)),
                  ],
                ),
              ],
            ).paddingAll(16.0),
            Container(
              width: context.width(),
              decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32),
                backgroundColor:  black,
              ),
              child: Column(
                children: [
                  16.height,
                  Row(
                    children: [
                      const MLCountryPickerComponent(),
                      8.width,
                      Text(mlGlobal_status, style: boldTextStyle()).expand(),
                      Text('152.799.358', style: boldTextStyle()),
                      16.width,
                    ],
                  ).paddingOnly(right: 16, left: 16),
                  TabBar(
                    controller: _tabController,
                    labelColor: mlColorBlue,
                    indicatorColor: mlColorBlue,
                    unselectedLabelColor: Colors.grey,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: primaryTextStyle(size: 14),
                    tabs: const [
                      Tab(text: 'Cases'),
                      Tab(text: 'Vaccines'),
                      Tab(text: 'News & Videos'),
                    ],
                  ),
                  Flexible(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                       // PurchaseMoreScreen(),
                        MLVaccineComponent(),
                       // PurchaseMoreScreen(),
                      ],
                    ),
                  ),
                ],
              ),
            ).flexible()
          ],
        ),
      ),
    );
  }
}
