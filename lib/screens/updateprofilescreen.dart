import 'package:finalproject/components/profileformcomponent.dart';
import 'package:finalproject/screens/loginscreen2.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MlUpdateProfileScreen extends StatefulWidget {
  const MlUpdateProfileScreen({super.key});

  @override
  State<MlUpdateProfileScreen> createState() => _MlUpdateProfileScreenState();
}

class _MlUpdateProfileScreenState extends State<MlUpdateProfileScreen> {
  @override
    void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24.0),
            decoration: boxDecorationWithRoundedCorners(
              backgroundColor: context.cardColor,
            ),
            height: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  54.height,
                  Text('Update your information', style: boldTextStyle(size: 24)),
                  32.height,
                  const MLProfileFormComponent(),
                  42.height,
                ],
              ),
            ),
          ),
          Positioned(top: 30, child: mlBackToPrevious(context,  white )),
          Positioned(
            bottom: 8,
            left: 16,
            right: 16,
            child: AppButton(
              height: 50,
              width: context.width(),
              color: mlPrimaryColor,
              onTap: () {
                finish(context);
                finish(context);
                finish(context);
                finish(context);
                return const MLLoginScreen().launch(context);
              },
              child: Text('Save', style: boldTextStyle(color: white)),
            ),
          ),
        ],
      ),
    );
  }
}
