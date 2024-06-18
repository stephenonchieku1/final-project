import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLDieaseaseComponent extends StatefulWidget {
  static String tag = '/MLDieaseaseComponent';

  const MLDieaseaseComponent({super.key});

  @override
  MLDieaseaseComponentState createState() => MLDieaseaseComponentState();
}

class MLDieaseaseComponentState extends State<MLDieaseaseComponent> {
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
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radiusOnly(topRight: 32),
        backgroundColor: black,
      ),
     
    );
  }
}
