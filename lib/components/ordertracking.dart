import 'package:finalproject/models/delivereddata2.dart';
import 'package:finalproject/models/ordertackdata.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLOrderTrackingDetailComponent extends StatefulWidget {
  static String tag = '/MLOrderTrackingDetailComponent';

  const MLOrderTrackingDetailComponent({super.key});

  @override
  MLOrderTrackingDetailComponentState createState() => MLOrderTrackingDetailComponentState();
}

class MLOrderTrackingDetailComponentState extends State<MLOrderTrackingDetailComponent> {
  List<MLOrderTrackData> data = mlOrderTrackDataList();
  List<MLDeliveredData> descriptionData = mlDeliveredStatusDataList();

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
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(16.0),
      shrinkWrap: true,
      children: [
        Column(
          children: data.map(
            (e) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      8.height,
                      Text((e.date).validate(), style: secondaryTextStyle(color: black)),
                      Text((e.time).validate(), style: primaryTextStyle()),
                    ],
                  ),
                  16.width,
                  Column(
                    children: [
                      SizedBox(
                        height: 40.0,
                        width: 40.0,
                        child: (e.value == true)
                            ? Icon(Icons.check_box, color: mlColorBlue)
                            : const Icon(
                                Icons.check_box_outline_blank,
                                color: Colors.grey,
                              ),
                      ),
                      (e.value == true)
                          ? Container(
                              height: 100,
                              width: 1.0,
                              color: Colors.grey.withOpacity(0.3),
                            )
                          : Container(),
                    ],
                  ),
                  16.width,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      8.height,
                      Text((e.stage).validate(), style: boldTextStyle()),
                      8.width,
                      Text((e.message).validate(), style: secondaryTextStyle()),
                    ],
                  ).expand(),
                ],
              );
            },
          ).toList(),
        ),
        16.height,
        const Divider(thickness: 0.5),
        16.height,
        Text('Description', style: boldTextStyle()),
        16.height,
        Container(
          padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radius(12),
            backgroundColor: context.cardColor,
            border: Border.all(color: mlColorLightGrey),
          ),
          child: Row(
            children: [
              Image.asset(ml_ic_mediTwo, height: 75, width: 75, fit: BoxFit.cover).cornerRadiusWithClipRRect(8.0),
              8.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  createRichText(
                    overflow: TextOverflow.ellipsis,
                    list: <TextSpan>[
                      TextSpan(text: 'FisherMan Friend\'s Mandarin', style: boldTextStyle()),
                      const TextSpan(text: ''),
                    ],
                  ),
                  8.height,
                  Text(('Tablets : 50 pills').validate(), style: boldTextStyle(size: 14, color: Colors.grey.shade500)),
                  12.height,
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.shopping_bag_outlined, size: 16),
                          Text('Quantity: ', style: boldTextStyle(color: Colors.grey.shade500, size: 14)),
                          Text('02 ', style: boldTextStyle(color:  white )),
                        ],
                      ),
                      Text('\$12.00', style: boldTextStyle(size: 14, color: mlColorBlue)),
                    ],
                  ),
                  8.height,
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
