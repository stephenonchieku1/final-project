import 'package:finalproject/screens/addvoucherscreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLConfirmAppointmentComponent extends StatelessWidget {
  const MLConfirmAppointmentComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            16.height,
            Text('Confirm Appointment', style: boldTextStyle(size: 24)).paddingLeft(16),
            8.height,
            Text('Find the service you are', style: secondaryTextStyle()).paddingLeft(16),
            16.height,
            
          ],
        ),
        Text(
          'Add Voucher',
          style: boldTextStyle(color: mlColorDarkBlue, decoration: TextDecoration.underline),
        ).paddingOnly(bottom: 70, right: 16).onTap(
          () {
            const MLAddVoucherScreen().launch(context);
          },
        ),
      ],
    );
  }
}
