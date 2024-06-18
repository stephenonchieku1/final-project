import 'package:finalproject/models/coviddata2.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';


class MLCovidTopRegionComponent extends StatefulWidget {
  static String tag = '/MLCovidTopRegionComponent';

  const MLCovidTopRegionComponent({super.key});

  @override
  MLCovidTopRegionComponentState createState() => MLCovidTopRegionComponentState();
}

class MLCovidTopRegionComponentState extends State<MLCovidTopRegionComponent> {
  List<MLCovidData> data = mlCovidCasesDataList();

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Top Regions', style: boldTextStyle(size: 18)),
        16.height,
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: boxDecorationWithRoundedCorners(
            backgroundColor: scaffoldDarkColor ,
            borderRadius: radius(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Confirm Cases', style: boldTextStyle(size: 18)),
              16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Region', style: boldTextStyle(size: 12, color:  white )),
                  16.width,
                  Text('Actives', style: boldTextStyle(size: 12, color:  white )),
                  Text('Cases', style: boldTextStyle(size: 12, color:  white )),
                ],
              ),
              const Divider(),
              Column(
                children: data.map(
                  (e) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.country.validate(),
                              style: boldTextStyle(size: 12, color:  white ),
                            ),
                            16.width,
                            Text(e.active.validate(), style: boldTextStyle(size: 12, color: Colors.green)),
                            Text(e.death.validate(), style: boldTextStyle(size: 12, color: mlColorRed)),
                          ],
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ).toList(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
