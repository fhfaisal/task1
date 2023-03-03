import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectTaskList{
  int count;
  String taskName;
  Color taskClr;
  ProjectTaskList({
    required this.count,
    required this.taskName,
    required this.taskClr,
  });
}
List<ProjectTaskList> taskList=[
  ProjectTaskList(count: 5,taskName: "Ongoing",taskClr: Colors.purple,),
  ProjectTaskList(count: 7,taskName: "Ongoing",taskClr: Colors.pink,),
  ProjectTaskList(count: 4,taskName: "Ongoing",taskClr: Colors.tealAccent,),
];
