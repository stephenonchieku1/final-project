import 'package:finalproject/components/doctordetails.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLDoctorDetailScreen extends StatefulWidget {
  static String tag = '/MLDoctorDetailScreen';

  const MLDoctorDetailScreen({super.key});

  @override
  MLDoctorDetailScreenState createState() => MLDoctorDetailScreenState();
}

class MLDoctorDetailScreenState extends State<MLDoctorDetailScreen> {
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
    return Scaffold(
      backgroundColor: mlPrimaryColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              expandedHeight: context.height() * 0.45,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  color: mlPrimaryColor,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Image.asset(ml_ic_doctor_image, fit: BoxFit.contain, width: context.width()).paddingTop(16.0),
                      mlBackToPreviousWidget(context, white).paddingOnly(left: 24, top: 24),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index == 0) {
                    return Container(
                      decoration: boxDecorationWithRoundedCorners(borderRadius: radiusOnly(topRight: 12, topLeft: 12)),
                      child: const MLDoctorDetailComponent(),
                    );
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
