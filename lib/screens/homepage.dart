import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/modes/project_tasklist.dart';
import 'package:task/screens/widget_settings/widget_settings.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey,
                                    ),
                                    Text(
                                      "Team Name",
                                      style: myFontStyle(
                                          16, FontWeight.w700, textTitelClr),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      color: textTitelClr,
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.search,
                                      size: 30, color: Colors.white),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Text(
                          "Preject Task",
                          style: myFontStyle(16, FontWeight.w700, textTitelClr),
                        ),
                        ListView.separated(itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: cardClr,
                            ),
                          );

                        }, separatorBuilder: (context, index) {
                          return SizedBox(width: 10,);
                        }, itemCount: taskList.length)
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 96,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: BottomNavbar(),
            ),
            Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: CircleAvatar(
                  maxRadius: 40,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                )),
          ],
        ),
      ),
    );
  }
}

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: cardClr,
          height: 96,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/Person.svg")),
                  Text(
                    "My Task",
                    style: myFontStyle(10, FontWeight.w400, textTitelClr),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/Person.svg")),
                  Text(
                    "My Task",
                    style: myFontStyle(10, FontWeight.w400, textTitelClr),
                  ),
                ],
              ),
              SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/Person.svg")),
                  Text(
                    "My Task",
                    style: myFontStyle(10, FontWeight.w400, textTitelClr),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 20,
                      width: 20,
                      child: SvgPicture.asset("assets/Person.svg")),
                  Text(
                    "My Task",
                    style: myFontStyle(10, FontWeight.w400, textTitelClr),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
