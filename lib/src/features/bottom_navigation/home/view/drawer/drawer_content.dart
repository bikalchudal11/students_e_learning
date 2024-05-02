// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/login/view/login_screen.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            DrawerHeader(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: scaffoldBgColor,
                ),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Icon(Icons.close)),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(network_img_url2),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Text(
                      "Jhonny Depp",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "jhonnyDepp11@gmail.com",
                      style: TextStyle(
                        fontSize: 13,
                        color: sColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ReuseableLIstTile(
              title: "Bookmark",
              iName: Icon(Icons.bookmark),
            ),
            ReuseableLIstTile(
              title: "Notification",
              iName: Icon(Icons.notifications),
            ),
            ReuseableLIstTile(
              title: "Live",
              iName: Icon(Icons.live_tv),
            ),
            ReuseableLIstTile(
              title: "Settings",
              iName: Icon(Icons.settings),
            ),
            ReuseableLIstTile(
              title: "Help",
              iName: Icon(Icons.help),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all(20),
          height: 35,
          width: 100,
          decoration: BoxDecoration(
              color: sColor, borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LogInScreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.logout),
                Text(
                  "Log Out",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ReuseableLIstTile extends StatelessWidget {
  Icon iName;
  String title;
  ReuseableLIstTile({super.key, required this.iName, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        tileColor: scaffoldBgColor,
        leading: iName,
        title: Text(title),
      ),
    );
  }
}
