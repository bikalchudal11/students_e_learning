import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/course_details/course_mentor.dart';
import 'package:students_e_learning/src/features/course_details/course_subject.dart';
import 'package:students_e_learning/src/features/course_details/slide_details.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key});

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

bool isDetails = false;
bool isSubject = true;
bool isMentors = false;
CourseView() {
  if (isSubject == true) {
    return SlideCourseSubject();
  }
  if (isMentors == true) {
    return SlideCourseMentor();
  }
  if (isDetails == true) {
    // return SlideCourseDetails();
  }
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    Color grey = Color.fromARGB(255, 150, 147, 147);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 239, 239),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color.fromARGB(255, 240, 239, 239),
        title: Text(
          "Details about course",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  height: 190,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pause_circle_outline_sharp,
                          size: 30,
                          color: grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Preview"),
                        SizedBox(
                          width: 95,
                        ),
                        Icon(
                          Icons.volume_off_rounded,
                          color: grey,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(Icons.fullscreen_rounded, color: grey)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://th.bing.com/th?id=OIP._I8jO3oaZQfGDRZnmMRiBwHaFP&w=297&h=210&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2"),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.play_circle_outline_rounded,
                    size: 40,
                    color: Color.fromARGB(255, 231, 222, 222),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Text("Intermediate Full Class"),
            SizedBox(height: 3),
            Row(
              children: [
                Icon(
                  Icons.play_circle_outline,
                  size: 15,
                  color: grey,
                ),
                SizedBox(width: 5),
                Text(
                  "12 Lesson",
                  style: TextStyle(color: grey, fontSize: 10),
                ),
                SizedBox(width: 7),
                Icon(
                  Icons.circle,
                  size: 4,
                  color: grey,
                ),
                SizedBox(width: 7),
                Icon(
                  Icons.timer_outlined,
                  size: 14,
                  color: grey,
                ),
                SizedBox(width: 2),
                Text("6 months", style: TextStyle(color: grey, fontSize: 10))
              ],
            ),
            SizedBox(height: 14),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                color: Color.fromARGB(255, 218, 212, 212),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          isDetails = true;
                          isSubject = false;
                          isMentors = false;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                          color: (!isDetails)
                              ? Color.fromARGB(255, 218, 212, 212)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Center(
                          child: Text("Details"),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          isMentors = true;
                          isSubject = false;
                          isDetails = false;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: (!isMentors)
                            ? Color.fromARGB(255, 218, 212, 212)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text("Mentors"),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(
                        () {
                          isSubject = true;
                          isMentors = false;
                          isDetails = false;
                        },
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: (!isSubject)
                            ? Color.fromARGB(255, 218, 212, 212)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text("Subjects"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CourseView(),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 2),
                        Text(
                          "Addmission Fee",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          '\$765.00',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 128, 62, 167),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Get admitted",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
