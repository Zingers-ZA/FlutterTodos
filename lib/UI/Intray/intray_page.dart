import 'package:flutter/material.dart';
import 'package:flutter_playground/models/global.dart';
import 'package:flutter_playground/models/task.dart';
import 'package:flutter_playground/UI/Intray/task_widget.dart';

class IntrayPage extends StatefulWidget {
  @override
  _IntrayPageState createState() => _IntrayPageState();
}

class _IntrayPageState extends State<IntrayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      color: darkGreyColor,
      child: ListView(
        padding: EdgeInsets.only(top: 150),
        children: getList(),
      ),
    );
  }

  List<Widget> getList() {
    return [
      TaskWidget(
        new Task("testTitle", true, 1, "testNote"),
      ),
      TaskWidget(
        new Task("testTitle2", true, 2, "testNote2"),
      ),
      TaskWidget(
        new Task("testTitle3", true, 3, "testNote3"),
      ),
       TaskWidget(
        new Task("testTitle3", true, 3, "testNote3"),
      ),
       TaskWidget(
        new Task("testTitle3", true, 3, "testNote3"),
      ),
       TaskWidget(
        new Task("testTitle3", true, 3, "testNote3"),
      ),
      // Container(
      //   height: 100,
      //   color: Colors.green,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.red,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.green,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.red,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.green,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.red,
      // ),
      // Container(
      //   height: 100,
      //   color: Colors.green,
      // ),
    ];
  }
}
