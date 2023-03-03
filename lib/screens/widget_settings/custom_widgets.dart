import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widget_settings.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {required this.btnText,
      required this.onTap,
      this.isOutlined,
      this.isIcon,
      this.addIcon,
      this.size,
      this.color});

  String btnText;
  VoidCallback onTap;
  bool? isOutlined;
  bool? isIcon;
  IconData? addIcon;
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      minWidth: double.infinity,
      color: isOutlined == null ? buttonClr : scaffoldBgClr,
      height: 56,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
        side: BorderSide(color: isOutlined == null ? buttonClr : textClrLight),
      ),
      child: isIcon == null
          ? Text(
              "${btnText}",
              style: myFontStyle(17, FontWeight.w600, textClrLight),
            )
          : Row(
              children: [
                Text(
                  "${btnText}",
                  style: myFontStyle(17, FontWeight.w600, textClrLight),
                ),
                Spacer(),
                Icon(
                  addIcon,
                  size: size,
                  color: color,
                ),
              ],
            ),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -120,
          child: Transform.rotate(
            angle: pi / 5,
            child: Container(
              height: 400,
              width: 480,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color(0xff8E8E93),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomField extends StatelessWidget {
  // CustomField({
  //   required this.textEditingController,
  //   required this.passwordEditingController,
  //   required this.isPassword,
  // })
  //
  // final TextEditingController textEditingController;
  // final TextEditingController passwordEditingController;
  // bool isPassword;
  CustomField(
      {this.isPassword,
      required this.levelText,
      required this.hintText,
      required this.prefixIcon});

  TextEditingController? textEditingController;
  TextEditingController? passwordEditingController;
  bool? isPassword = false;
  String levelText;
  String hintText;
  String prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "${levelText}",
              style: myFontStyle(20, FontWeight.w400, levelClr),
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 60,
          child: TextFormField(
            controller: isPassword == true
                ? passwordEditingController
                : textEditingController,
            obscureText: isPassword == true,
            style: myFontStyle(20, FontWeight.w400, textTitelClr),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              labelStyle: TextStyle(color: textClrLight, fontSize: 20),
              hintText: "${hintText}",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(28),
              ),
              prefixIcon: Padding(
                padding: isPassword==true ?EdgeInsets.only(left: 22, right: 22): EdgeInsets.only(left: 18, right: 18),
                child: SvgPicture.asset(
                  "${prefixIcon}",
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
