import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/screens/widget_settings/custom_widgets.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

import 'on_boarding4.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Expanded(child: OnBoarding()),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 18, 53),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Get Notified \nwhen you Get a \nNew Assignment",
                        style: TextStyle(
                            fontSize: 36,wordSpacing: 2,letterSpacing: 2,
                            fontWeight: FontWeight.w700,
                            color: textTitelClr),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SvgPicture.asset("assets/Slider3.svg"),
                      SizedBox(
                        height: 36,
                      ),
                      CustomButton(
                        onTap: () {},
                        btnText: "Sign Up",
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomButton(
                        isOutlined: true,
                        onTap: () {
                          Get.to(OnBoarding4(),transition: Transition.fadeIn,duration: Duration(seconds: 1));
                        },
                        btnText: "Log In",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
