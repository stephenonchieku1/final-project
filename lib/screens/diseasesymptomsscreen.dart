import 'package:finalproject/components/diseasesymptoms.dart';
import 'package:finalproject/screens/bookappointmentscreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLDieaseseSymptomsScreen extends StatefulWidget {
  static String tag = '/MLDieaseaseSymptomsScreen';

  const MLDieaseseSymptomsScreen({super.key});

  @override
  MLDieaseseSymptomsScreenState createState() => MLDieaseseSymptomsScreenState();
}

class MLDieaseseSymptomsScreenState extends State<MLDieaseseSymptomsScreen> {
  PageController controller = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
  );
  List<String> slides = <String>[ml_ic_diseaseSlide1, ml_ic_diseaseSlide2];

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
        backgroundColor: mlPrimaryColor,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
                  automaticallyImplyLeading: false,
                  expandedHeight: 400,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: boxDecorationWithRoundedCorners(
                        borderRadius: radiusOnly(topRight: 32),
                        backgroundColor:  black ,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          8.height,
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_back_ios,
                                color: white ,
                                size: 20,
                              ).onTap(
                                () {
                                  finish(context);
                                },
                              ),
                              8.width,
                              Text(
                                'Disease Symptoms',
                                style: boldTextStyle(color:  white , size: 18),
                              ).center().expand(),
                              const Icon(Icons.home_outlined, color:  white , size: 24),
                            ],
                          ).paddingAll(16.0),
                          const Divider(height: 0.5),
                          16.height,
                          Text(
                            'Covid-19 (Corona Virus)',
                            style: boldTextStyle(size: 24, color:  white ),
                          ).paddingOnly(left: 16),
                          8.height,
                          Text(
                            'Corona Disease',
                            style: secondaryTextStyle(size: 16, color: Colors.grey),
                          ).paddingOnly(left: 16),
                          16.height,
                          Container(
                            color:  black ,
                            height: 200,
                            width: context.width(),
                            child: PageView(
                              controller: controller,
                              children: slides.map(
                                (e) {
                                  return commonCachedNetworkImage(
                                    e.validate(),
                                    height: 170,
                                    width: context.width(),
                                    fit: BoxFit.cover,
                                  ).cornerRadiusWithClipRRect(12).paddingRight(16);
                                },
                              ).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (kDebugMode) {
                        print('data');
                      }
                      if (index == 0) {
                        return const MLDiseaseSymptomsComponent();
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            AppButton(
              color: mlPrimaryColor,
              width: context.width(),
              onTap: () {
                const MLBookAppointmentScreen(index: 0).launch(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Book Appointment ', style: boldTextStyle(color: white)),
                  const Icon(Icons.arrow_forward_ios, color: white, size: 16),
                ],
              ),
            ).paddingOnly(right: 16, left: 16, bottom: 16),
          ],
        ),
      ),
    );
  }
}
