import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageTimerContainer extends StatelessWidget {
  Color textColor;
  Color containerColor;
  int num;
  HomepageTimerContainer({
    super.key,
    required this.num,
    required this.textColor,
    required this.containerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          num.toString(),
          style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}
