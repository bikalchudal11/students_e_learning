import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';

class HomeAppbarIcon extends StatelessWidget {
  Icon iconName;
  HomeAppbarIcon({super.key, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: sColor,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: iconName));
  }
}
