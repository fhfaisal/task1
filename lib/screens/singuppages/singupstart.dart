import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task/screens/singuppages/createprofile.dart';
import 'package:task/screens/widget_settings/custom_widgets.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

class SignUpStart extends StatelessWidget {
  const SignUpStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(16, 0, 18, 53),
          child: Column(
            children: [
              Container(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        child: SvgPicture.asset("assets/CancelClose.svg"),
                        onTap: () {
                          Get.back();
                        }),
                    Text(
                      "Sign Up",
                      style: myFontStyle(16, FontWeight.w700, textClrLight),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomField(isPassword: false,levelText: "Your Email Address",hintText: "Enter Email",prefixIcon: "assets/Mailbox.svg"),
              CustomField(isPassword: true,levelText: "Your Password",hintText: "Enter Your Password",prefixIcon: "assets/Pass.svg"),
              SizedBox(
                height: 10,
              ),
              CustomButton(btnText: "Log In", onTap: () {
                Get.to(CreateProfile(),
                    transition: Transition.fadeIn,
                    duration: Duration(seconds: 1));
              }),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Your Password",
                    style: myFontStyle(16, FontWeight.w400, textClrLight),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


