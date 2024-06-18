import 'package:finalproject/components/countrypickercomponent.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:finalproject/screens/updateprofilescreen.dart';


class MLConfirmPhoneNumberScreen extends StatefulWidget {
  const MLConfirmPhoneNumberScreen({super.key});
static String tag = '/MLConfirmPhoneNumberScreen';
  @override
  State<MLConfirmPhoneNumberScreen> createState() => _MLConfirmPhoneNumberScreenState();
}

class _MLConfirmPhoneNumberScreenState extends State<MLConfirmPhoneNumberScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }
  Future<void> init() async {
    changeStatusColor(scaffoldDarkColor );
  }

  @override
  void dispose() {
    super.dispose();
    changeStatusColor(mlPrimaryColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24.0),
            decoration: boxDecorationWithRoundedCorners(backgroundColor: context.cardColor),
            padding: const EdgeInsets.all(16.0),
            height: context.height(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  56.height,
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: commonCachedNetworkImage(
                      ml_ic_verifyindicator,
                      alignment: Alignment.centerLeft,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  32.height,
                  Text(mlContact_msg, style: boldTextStyle(size: 24)),
                  8.height,
                  Text(mlContact_sub_msg, style: secondaryTextStyle(size: 16)),
                  16.height,
                  Row(
                    children: [
                      const MLCountryPickerComponent(),
                      16.width,
                      AppTextField(
                        textFieldType: TextFieldType.PHONE,
                        decoration: InputDecoration(
                          labelText: mlPhoneNumber,
                          labelStyle: secondaryTextStyle(size: 16),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: mlColorLightGrey.withOpacity(0.2)),
                          ),
                        ),
                      ).expand(),
                    ],
                  ),
                  24.height,
                  AppButton(
                    width: double.infinity,
                    color: mlColorDarkBlue,
                    onTap: () => const MlUpdateProfileScreen().launch(context),
                    child: Text(mlSend, style: boldTextStyle(color: white)),
                  ),
                ],
              ),
            ),
          ),
          Positioned(top: 30, child: mlBackToPrevious(context,  white )),
        ],
      ),
    );
  }
}
