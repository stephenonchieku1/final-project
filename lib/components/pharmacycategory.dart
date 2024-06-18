import 'package:finalproject/models/medicationdata.dart';
import 'package:finalproject/utils/dataprovider2.dart';
import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class MLPharmacyCategoriesComponent extends StatefulWidget {
  static String tag = '/MLPharmacyCategoriesComponent';

  const MLPharmacyCategoriesComponent({super.key});

  @override
  MLPharmacyCategoriesComponentState createState() => MLPharmacyCategoriesComponentState();
}

class MLPharmacyCategoriesComponentState extends State<MLPharmacyCategoriesComponent> {
  List<MLMedicationData> listOne = mlCategoryMedicineList();
  List<MLMedicationData> listTwo = mlPrescriptionMedicineDataList();

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
      height: context.height(),
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radiusOnly(topRight: 32),
        backgroundColor: black ,
      ),
      //child: PurchaseMoreScreen().withHeight(context.height() * 0.2),
    );
  }
}
