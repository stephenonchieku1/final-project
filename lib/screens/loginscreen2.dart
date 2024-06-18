import 'package:finalproject/components/countrypickercomponent.dart';
import 'package:finalproject/components/socialaccountcomponent.dart';
import 'package:finalproject/screens/dashboardscreen.dart';
import 'package:finalproject/screens/forgetpasswordscreen.dart';
import 'package:finalproject/screens/registrationscreen.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/common.dart';
import 'package:finalproject/utils/image.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class MLLoginScreen extends StatefulWidget {
  const MLLoginScreen({super.key});
   static String tag = '/MLLoginScreen';
  @override
  State<MLLoginScreen> createState() => _MLLoginScreenState();
}

class _MLLoginScreenState extends State<MLLoginScreen> {

   @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    changeStatusColor(mlPrimaryColor);  
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mlPrimaryColor,
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 250),
            height: context.height(),
            decoration: boxDecorationWithRoundedCorners(
              borderRadius: radiusOnly(topRight: 32),
              backgroundColor: context.cardColor,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  60.height,
                  Text(mlLogin_title, style: secondaryTextStyle(size: 16)),
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
                            borderSide: BorderSide(color: mlColorLightGrey.withOpacity(0.2), width: 2),
                          ),
                        ),
                      ).expand(),
                    ],
                  ),
                  16.height,
                  AppTextField(
                    textFieldType: TextFieldType.PASSWORD,
                    decoration: InputDecoration(
                      labelText: mlPassword,
                      labelStyle: secondaryTextStyle(size: 16),
                      prefixIcon: const Icon(Icons.lock_outline, color:  white ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mlColorLightGrey.withOpacity(0.2)),
                      ),
                    ),
                  ),
                  8.height,
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(mlForget_password, style: secondaryTextStyle(size: 16)).onTap(
                      () {
                        const MLForgetPasswordScreen().launch(context);
                      },
                    ),
                  ),
                  24.height,
                  AppButton(
                    color: mlPrimaryColor,
                    width: double.infinity,
                    onTap: () {
                      finish(context);
                      const MLDashboardScreen().launch(context);
                    },
                    child: Text(mlLogin, style: boldTextStyle(color: white)),
                  ),
                  22.height,
                  Text(mlLogin_with, style: secondaryTextStyle(size: 16)).center(),
                  22.height,
                  const MLSocialAccountsComponent(),
                  22.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(mlDont_have_account, style: primaryTextStyle()),
                      8.width,
                      Text(
                        mlRegister,
                        style: boldTextStyle(color: mlColorBlue, decoration: TextDecoration.underline),
                      ).onTap(
                        () {
                          const MLRegistrationScreen().launch(context);
                        },
                      ),
                    ],
                  ),
                  32.height,
                ],
              ).paddingOnly(left: 16, right: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 75),
            width: context.width(),
            child: commonCachedNetworkImage(ml_ic_register_indicator, alignment: Alignment.center, width: 200, height: 200),
          ),
        ],
      ),
    );
  }
}
