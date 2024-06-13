import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:finalproject/utils/dataprovider.dart';
import 'package:finalproject/models/tophospitaldata.dart';



import 'package:nb_utils/nb_utils.dart';

class AppointmentDetailList extends StatefulWidget {
  const AppointmentDetailList({super.key});

  @override
  AppointmentDetailListState createState() => AppointmentDetailListState();
}

class AppointmentDetailListState extends State<AppointmentDetailList> {
  List<MLTopHospitalData> topHospitalList = mlHospitalListDataList();

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

  Widget mOption(var value) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
              child: const Icon(Icons.location_searching, size: 12)
                  .paddingRight(8)),
          TextSpan(text: value, style: secondaryTextStyle(size: 12)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 80),
        padding: const EdgeInsets.all(12.0),
        decoration: boxDecorationWithRoundedCorners(
          border: Border.all(color: cadetBlue),
          borderRadius: radius(12),
          backgroundColor: context.cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            commonCachedNetworkImage(
              (topHospitalList[0].image).validate(),
              width: double.infinity,
              height: 150.0,
              fit: BoxFit.cover,
            ).cornerRadiusWithClipRRect(8.0),
            16.height,
            Text((topHospitalList[0].title).validate(), style: boldTextStyle()),
            16.height,
            const Divider(thickness: 0.5),
            16.height,
            mOption('Location'),
            8.height,
            Text(
              topHospitalList[0].city.validate(),
              style: primaryTextStyle(color: colorDarkBlue),
            ).paddingLeft(18.0),
            16.height,
            mOption('Service'),
            4.height,
            Text(
              'Endocrinology -${topHospitalList[0].fees.validate()}',
              style: primaryTextStyle(color: colorDarkBlue),
            ).paddingLeft(18.0),
            16.height,
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 4),
                  decoration: boxDecorationWithRoundedCorners(
                      backgroundColor: colorCyan, borderRadius: radius(12)),
                  child:
                      Image.asset(ml_ic_doctor_image, height: 50, width: 50),
                ),
                8.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Doctor',
                        style: secondaryTextStyle(
                            color:  blackColor)),
                    8.height,
                    Text('Dr. Stephen Chew',
                        style: primaryTextStyle(color: colorDarkBlue)),
                  ],
                ),
              ],
            ),
            16.height,
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 4.0),
                  decoration: boxDecorationWithRoundedCorners(
                      borderRadius: radius(12), backgroundColor: colorCyan),
                  child: Image.asset(ml_ic_profile_picture,
                      height: 50, width: 50),
                ),
                8.width,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Patient',
                        style: secondaryTextStyle(
                            color:  blackColor)),
                    8.height,
                    Text('Kaixa Pham',
                        style: primaryTextStyle(color: colorDarkBlue)),
                  ],
                ),
              ],
            ),
            16.height,
            mOption('Service'),
            4.height,
            Text('Thu, Mar 18 -08:00 AM',
                    style: primaryTextStyle(color: colorDarkBlue))
                .paddingLeft(18.0),
            16.height,
            mOption('Payment Method'),
            4.height,
            Text('Payment at the clinic',
                    style: primaryTextStyle(color: colorDarkBlue))
                .paddingLeft(18.0),
          ],
        ),
      ).paddingAll(16.0),
    );
  }
}
