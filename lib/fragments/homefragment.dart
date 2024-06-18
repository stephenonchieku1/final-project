import 'package:finalproject/components/homebottom.dart';
import 'package:finalproject/components/hometop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MlHomeFragment extends StatefulWidget {
  const MlHomeFragment({super.key});
  static String tag = '/MLHomeFragment';
  @override
  State<MlHomeFragment> createState() => _MlHomeFragmentState();
}

class _MlHomeFragmentState extends State<MlHomeFragment> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const MLHomeTopComponent(),
            16.height,
            const MLHomeBottomComponent(),
            64.height,
          ],
        ),
      ),
    );
  }
}
