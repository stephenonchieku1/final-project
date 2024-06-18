import 'package:finalproject/models/specialistdata2.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:nb_utils/nb_utils.dart';

class MLSpecialistVListComponent extends StatefulWidget {
  static String tag = '/MLSpecialistVListComponent';

  const MLSpecialistVListComponent({super.key});

  @override
  MLSpecialistVListComponentState createState() => MLSpecialistVListComponentState();
}

class MLSpecialistVListComponentState extends State<MLSpecialistVListComponent> {
  List<MLSpecialistData> data = mlSpecialistDataDataList();

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
    return  MasonryGridView.count(crossAxisCount: 2,
     
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radius(12.0),
            border: Border.all(color: mlColorLightGrey),
            backgroundColor: context.cardColor,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: boxDecorationWithRoundedCorners(
                  //backgroundColor: appStore.isDarkModeOn ? cardDarkColor : mlColorGreyShade,
                  borderRadius: radius(12.0),
                ),
                child: Image.asset(data[index].image.validate(), fit: BoxFit.fill, width: 48, height: 48),
              ),
              const SizedBox(height: 8),
              Text(data[index].title.validate(), style: boldTextStyle()),
              4.height,
              Text(data[index].subtitle.validate(), style: secondaryTextStyle(size: 16)),
            ],
          ),
        );
      },
      
      mainAxisSpacing: 16.0,
      crossAxisSpacing: 16.0,
    );
  }
}
