import 'package:finalproject/screens/productmoredetailscreen.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLProductDetailComponent extends StatefulWidget {
  static String tag = '/MLProductDetailComponent';

  const MLProductDetailComponent({super.key});

  @override
  MLProductDetailComponentState createState() => MLProductDetailComponentState();
}

class MLProductDetailComponentState extends State<MLProductDetailComponent> {
  String? pillName = 'Tmrw Pill Bottle Vitamin';
  String? numberOfPill = 'Tablets : 50/100/150 Pills';
  bool? liked = false;

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
      padding: const EdgeInsets.all(16.0),
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radiusOnly(topLeft: 24, topRight: 24),
        backgroundColor:black ,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          16.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(pillName!, style: boldTextStyle(size: 20)),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: boxDecorationWithRoundedCorners(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: radius(24),
                  backgroundColor: context.cardColor,
                ),
                child: liked == true
                    ? InkWell(
                        onTap: () {
                          setState(
                            () {
                              liked = false;
                            },
                          );
                        },
                        child: const Icon(Icons.favorite, color: Colors.red, size: 16),
                      )
                    : InkWell(
                        onTap: () {
                          setState(() {
                            liked = true;
                          });
                        },
                        child: const Icon(Icons.favorite_outline, color: Colors.grey, size: 16),
                      ),
              ),
            ],
          ),
          8.height,
          Text(numberOfPill!, style: boldTextStyle(color: Colors.grey)),
          8.height,
          Row(
            children: [
              Text('\$250.00 ', style: boldTextStyle(size: 20, color: Colors.blue.shade600)),
              4.width,
              Text('\$350.00 ', style: boldTextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough)),
            ],
          ),
          16.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.yellow, size: 16).expand(flex: 1),
              4.width,
              Text('4.8 (456 Reviews) ', style: boldTextStyle(size: 14, color: black)),
              4.width,
              Text(' | 10 in stock', style: boldTextStyle(size: 14, color: black)),
              4.width,
              Container(
                alignment: Alignment.centerRight,
                child: LinearProgressIndicator(
                  minHeight: 5.0,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
                  value: 0.6,
                ),
              ).expand(flex: 5),
            ],
          ),
          16.height,
          const Divider(thickness: 1.0),
          8.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Overview', style: boldTextStyle()),
              Icon(Icons.arrow_forward_ios_outlined, size: 20, color: Colors.blue.shade600),
            ],
          ).onTap(() {
            const MLProductMoreDetailScreen().launch(context);
          }),
          8.height,
          const Divider(thickness: 1.0),
          8.height,
          Text('Specification', style: boldTextStyle()),
          16.height,
          Table(
            children: [
              TableRow(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.local_hospital_outlined, color: Colors.blue, size: 18),
                          4.width,
                          Text('Brand', style: boldTextStyle()),
                        ],
                      ),
                      4.height,
                      Text('Tmrw Pharmacy', style: secondaryTextStyle(size: 16)),
                    ],
                  ).paddingRight(16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.people_alt_outlined, color: Colors.blue, size: 18),
                          4.width,
                          Text('Age Range', style: boldTextStyle()),
                        ],
                      ),
                      4.height,
                      Text('Adult', style: secondaryTextStyle(size: 16)),
                    ],
                  ),
                ],
              )
            ],
          ),
          64.height,
        ],
      ),
    );
  }
}
