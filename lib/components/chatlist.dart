
import 'package:finalproject/styles/styles.dart';
import 'package:finalproject/utils/image.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class MLChatListComponent extends StatefulWidget {
  final List<String> data;
  final Color color;
  final Widget screen;

  const MLChatListComponent({
    super.key,
    required this.data,
    required this.color,
    required this.screen,
  });

  @override
  State<MLChatListComponent> createState() => _MLChatListComponentState();
}

class _MLChatListComponentState extends State<MLChatListComponent> {
  int notificationCounter = 3;

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
      children: widget.data.map(
        (e) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: widget.color,
                      radius: 28.0,
                      child: Image.asset(
                        ml_ic_doctor_image,
                        fit: BoxFit.cover,
                        width: 56,
                        height: 56,
                      ).cornerRadiusWithClipRRect(30.0),
                    ),
                    Positioned(
                      bottom: 8.0,
                      right: 2.0,
                      child: e == widget.data[0]
                          ? Container(
                              width: 8.0,
                              height: 8.0,
                              decoration: boxDecorationWithRoundedCorners(
                                boxShape: BoxShape.circle,
                                backgroundColor: Colors.greenAccent,
                              ),
                            )
                          : Container(),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(text: e.validate(), style: boldTextStyle()),
                              TextSpan(text: '(Clinic Visit)', style: secondaryTextStyle(size: 16)),
                            ],
                          ),
                        ),
                        Text('9.56 AM', style: boldTextStyle()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("What are you doing?", style: secondaryTextStyle()),
                        Container(
                          padding: const EdgeInsets.all(6),
                          alignment: Alignment.center,
                          decoration: boxDecorationWithRoundedCorners(
                            backgroundColor: mlColorBlue,
                            boxShape: BoxShape.circle,
                          ),
                          child: Text(notificationCounter.toString(), style: secondaryTextStyle(color: Colors.white)),
                        ),
                      ],
                    ),
                  ],
                ).expand(),
              ],
            ).onTap(
              () {
                hideKeyboard(context);
                widget.screen.launch(context);
              },
            ),
          );
        },
      ).toList(),
    );
  }
}
