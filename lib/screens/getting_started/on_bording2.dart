import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/screens/getting_started/on_boarding3.dart';
import 'package:task/screens/widget_settings/custom_widgets.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

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
                        "Update Progress \nYour Work for The \nTeam",
                        style: TextStyle(
                            fontSize: 36,wordSpacing: 2,letterSpacing: 2,
                            fontWeight: FontWeight.w700,
                            color: textTitelClr),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SvgPicture.asset("assets/Slider2.svg"),
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
                          Get.to(OnBoarding3(),transition: Transition.fadeIn,duration: Duration(seconds: 1));
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
