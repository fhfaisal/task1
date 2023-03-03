import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/screens/getting_started/on_boarding1.dart';
import 'package:task/screens/getting_started/on_bording2.dart';
import 'package:task/screens/widget_settings/custom_widgets.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,


      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBgClr,
        primarySwatch: Colors.blue,
      ),
      home: OnBoarding1(),
    );
  }
}
