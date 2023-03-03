import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screens/getting_started/on_bording2.dart';
import 'package:task/screens/widget_settings/custom_widgets.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(16, 0, 18, 53),
        child: Column(
          children: [
            Expanded(
                flex: 12,
                child: Center(
                  child: Card(
                      color: cardClr,
                      child: Container(
                          padding: EdgeInsets.all(33),
                          height: 96,
                          width: 96,
                          child: SvgPicture.asset(
                            "assets/task.svg",
                          ))),
                )),
            CustomButton(
              btnText: "Getting Started",
              onTap: () {
                Get.to(OnBoarding2(),transition: Transition.fadeIn,duration: Duration(seconds: 1));
              },
              isIcon: true,
              addIcon: Icons.arrow_forward,
              size: 25,
              color: textClrLight,
            ),
          ],
        ),
      ),
    );
  }
}
