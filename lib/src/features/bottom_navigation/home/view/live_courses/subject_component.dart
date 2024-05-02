import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';

class SubjectsComponent extends StatelessWidget {
  String imageUrl;
  String titleText;
  String subtitleText;

  SubjectsComponent(
      {super.key,
      required this.imageUrl,
      required this.titleText,
      this.subtitleText = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Center(
        child: ListTile(
          leading: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          title: Text(
            titleText,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
          subtitle: Text(
            subtitleText,
            style: TextStyle(fontSize: 13, color: sColor),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_down_rounded,
            color: sColor,
          ),
        ),
      ),
    );
  }
}
