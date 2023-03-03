import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task/screens/homepage.dart';

import '../widget_settings/custom_widgets.dart';
import '../widget_settings/widget_settings.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                      child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: textTitelClr,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Column(
                  children: [
                    Text(
                      "Complete Your Profile",
                      style: myFontStyle(16, FontWeight.w700, textTitelClr),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      maxRadius: 60,
                      backgroundColor: Color(0xff8E8E93),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo_camera,
                            size: 35,
                          )),
                    )
                  ],
                ),
              ),
              CustomField(
                  isPassword: false,
                  levelText: "Enter Full Name",
                  hintText: "Enter Your Full Name",
                  prefixIcon: "assets/Person.svg"),
              CustomField(
                  isPassword: true,
                  levelText: "Your Password",
                  hintText: "Enter Your Password",
                  prefixIcon: "assets/Pass.svg"),
              SizedBox(
                height: 10,
              ),
              CustomButton(btnText: "Log In", onTap: () {
                Get.to(HomePage(),
                    transition: Transition.native,
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
