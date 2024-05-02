import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/colors.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';

class PremiumCoursesTeacherContainer extends StatefulWidget {
  const PremiumCoursesTeacherContainer({super.key});

  @override
  State<PremiumCoursesTeacherContainer> createState() =>
      _PremiumCoursesTeacherContainerState();
}

class _PremiumCoursesTeacherContainerState
    extends State<PremiumCoursesTeacherContainer> {
  bool isBookMarked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            network_img_url2,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isBookMarked = !isBookMarked;
                          });
                        },
                        child: Icon(
                          isBookMarked ? Icons.bookmark : Icons.bookmark_add,
                          size: 30,
                          color: isBookMarked ? pColor : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage(
                            network_img_url2,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Jhonny Depp")
                      ],
                    ),
                    Text(
                      "\$45.00",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "English Spoken",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.play_circle,
                          color: sColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("8hr 30min")
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: sColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("14 lessons")
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
