import 'package:finalproject/components/doctorchat.dart';
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/string.dart';
import 'package:flutter/material.dart';



import 'package:nb_utils/nb_utils.dart';

class MLChatFragment extends StatefulWidget {
  static String tag = '/MLChatFragment';

  const MLChatFragment({super.key});

  @override
  MLChatFragmentState createState() => MLChatFragmentState();
}

class MLChatFragmentState extends State<MLChatFragment> with SingleTickerProviderStateMixin {
  int notificationCounter = 3;
  final TextEditingController _searchController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {});
    });
    _tabController = TabController(length: 2, vsync: this);
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
  void dispose() {
    

    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          width: context.width(),
          decoration: boxDecorationWithRoundedCorners(
            borderRadius: radiusOnly(topRight: 32),
           // backgroundColor: appStore.isDarkModeOn ? black : white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.height,
              Text('Inbox', style: boldTextStyle(size: 20)).paddingLeft(16.0),
              8.height,
              AppTextField(
                controller: _searchController,
                textFieldType: TextFieldType.OTHER,
                autoFocus: false,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(Icons.search, color: white , size: 20),
                  suffixIcon: _searchController.text.isEmpty
                      ? null
                      : const Icon(Icons.clear).onTap(() {
                          _searchController.clear();
                        }),
                ),
              ).paddingOnly(right: 16.0, left: 16.0),
              16.height,
              TabBar(
                controller: _tabController,
                labelColor: colorBlue,
                indicatorColor: colorBlue,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: '$mlDoctors ($notificationCounter)'),
                  const Tab(text: mlBot_support),
                ],
              ),
              TabBarView(
                controller: _tabController,
                children: const [
                  MLDoctorChatComponent(),
                 // PurchaseMoreScreen(),
                ],
              ).expand(),
            ],
          ),
        ),
      ),
    );
  }
}
