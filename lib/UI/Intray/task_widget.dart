import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/models/global.dart';
import 'package:flutter_playground/models/task.dart';

class TaskWidget extends StatefulWidget {
  TaskWidget(this.task);

  Task task;

  @override
  _TaskWidgetState createState() => _TaskWidgetState(task);
}

class _TaskWidgetState extends State<TaskWidget> {
  _TaskWidgetState(this.task);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Center(
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            color: redColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Stack(
            children: <Widget>[
              SizedBox.expand(
                child: Container(
                  padding:
                      EdgeInsets.only(bottom: 10, top: 10, right: 25, left: 25),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          this.task.title,
                          style: taskTitleStyle,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          this.task.note,
                          style: taskNoteStyle,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.check_circle_outline,
                          size: 40,
                          color: darkGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
