// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/home_dashboard.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/test_paper/test_report.dart';

class PaymentConfirm extends StatelessWidget {
  const PaymentConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 120,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Congratulations",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "course successfully purchased",
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeDashBoard()));
                },
                child: CustomButton(buttonName: "Home Page"))
          ],
        ),
      ),
    );
  }
}
