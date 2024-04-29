import 'package:flutter/material.dart';

class HomepageTimerContainer extends StatelessWidget {
  int num;
  HomepageTimerContainer({super.key, required this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        child: Text(
          num.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
