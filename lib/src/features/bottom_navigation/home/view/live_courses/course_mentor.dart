import 'package:flutter/material.dart';
import 'package:students_e_learning/src/core/constants/img_const.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/subject_component.dart';

class SlideCourseMentor extends StatelessWidget {
  const SlideCourseMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 15),
        SubjectsComponent(
          imageUrl: network_img_url,
          titleText: 'David Harry',
          subtitleText: 'Maths',
        ),
        SizedBox(height: 8),
        SubjectsComponent(
          imageUrl:
              'https://th.bing.com/th/id/R.f67fede542f6e4e7505d5241871ecf7b?rik=A787avCBlofOuQ&riu=http%3a%2f%2fwww.stepbystep.com%2fwp-content%2fuploads%2f2013%2f05%2fTop-10-Reasons-to-Become-a-Teacher9.jpg&ehk=Ah663nNDBGhtS69QGEO%2bB4%2bEUC6GJetNp5XBCWu%2bgjs%3d&risl=&pid=ImgRaw&r=0',
          titleText: 'Peter Parker',
          subtitleText: 'English',
        ),
        SizedBox(height: 8),
        SubjectsComponent(
          imageUrl:
              "https://acts1723.com/wp-content/uploads/2014/06/angry-professor.jpg",
          titleText: "Jhon Mathew",
          subtitleText: 'Physics',
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
