import 'package:finalproject/models/voucherdata.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:finalproject/screens/addpaymentscreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
//import 'package:finalproject/utils/dataprovider.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MLAddVoucherScreen extends StatefulWidget {
  static String tag = '/MLAddVoucherScreen';

  const MLAddVoucherScreen({super.key});

  @override
  MLAddVoucherScreenState createState() => MLAddVoucherScreenState();
}

class MLAddVoucherScreenState extends State<MLAddVoucherScreen> {
  List<MLVoucherData> data = mlVoucherDataList();
  final int _radioSelected = 1;
  int? selectedIndex = 0;

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
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: boxDecorationWithRoundedCorners(
                borderRadius: radiusOnly(topRight: 32),
                backgroundColor:  black ,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.height,
                  mlBackToPreviousWidget(context,  white ),
                  32.height,
                  Text(mlVoucher_title, style: boldTextStyle(size: 24)),
                  8.height,
                  Text(mlVoucher_subtitle, style: secondaryTextStyle()),
                  32.height,
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              selectedIndex = index;
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: boxDecorationWithRoundedCorners(
                            borderRadius: radius(12.0),
                            border: Border.all(color: selectedIndex == index ? colorBlue : colorLightGrey100),
                            backgroundColor: context.cardColor,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16.0),
                                decoration: boxDecorationWithRoundedCorners(
                                  borderRadius: radius(12.0),
                                  backgroundColor: Colors.cyan.withOpacity(0.1),
                                ),
                                child: Image.asset(
                                  (data[index].image).validate(),
                                  fit: BoxFit.fill,
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                              8.width,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text((data[index].title).validate(), style: boldTextStyle()),
                                  4.height,
                                  Text(('[Up-to \$50]'), style: boldTextStyle()),
                                  4.height,
                                  Text(('Exp: 21 April 2021'), style: secondaryTextStyle()),
                                ],
                              ).expand(),
                              Radio(
                                value: 1,
                                groupValue: _radioSelected,
                                activeColor: selectedIndex == index ? colorBlue : colorLightGrey100,
                                onChanged: (value) {
                                  //
                                },
                              ),
                            ],
                          ),
                        ).paddingBottom(8.0),
                      );
                    },
                  ),
                ],
              ),
            ),
            AppButton(
              width: context.width(),
              color: colorDarkBlue,
              child: Text("Add Voucher", style: boldTextStyle(color: white)),
              onTap: () {
                const MLAddPaymentScreen().launch(context);
              },
            ).paddingOnly(right: 16, left: 16, bottom: 16),
          ],
        ),
      ),
    );
  }
}
