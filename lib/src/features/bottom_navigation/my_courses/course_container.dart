// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';

class CourseComponent extends StatelessWidget {
  final double percentage;
  String title;
  String subtitle;
  Color progressColor;
  CourseComponent({
    super.key,
    required this.percentage,
    required this.title,
    required this.subtitle,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: scaffoldBgColor, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    '${percentage.toInt()}' + '%',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      strokeWidth: 3,
                      backgroundColor: const Color.fromARGB(255, 194, 191, 191)
                          .withOpacity(0.3),
                      valueColor: AlwaysStoppedAnimation<Color>(progressColor),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            subtitle:
                Text(subtitle, style: TextStyle(fontSize: 13, color: sColor)),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
