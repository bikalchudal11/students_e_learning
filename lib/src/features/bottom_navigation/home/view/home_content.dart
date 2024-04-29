// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/components/custom_button.dart';
import 'package:students_e_learning/src/core/components/home_appbar_icon.dart';
import 'package:students_e_learning/src/core/components/homepage_timer_container.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/components/class_container.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  "Bikal!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.waving_hand,
                  color: Colors.deepOrange,
                )
              ],
            ),
          ],
        ),
        actions: [
          HomeAppbarIcon(
            iconName: Icon(
              Icons.search,
              size: 28,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          HomeAppbarIcon(
            iconName: Icon(
              Icons.person,
              size: 28,
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                  color: lightPurple, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.school,
                          size: 28,
                        ),
                        Row(
                          children: [
                            HomepageTimerContainer(
                              num: 00,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            HomepageTimerContainer(
                              num: 10,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            HomepageTimerContainer(
                              num: 30,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "Math class",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "starting soon",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(buttonName: 'Join class')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Today's Class",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // ClassContainer(eachClass: ,

                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
