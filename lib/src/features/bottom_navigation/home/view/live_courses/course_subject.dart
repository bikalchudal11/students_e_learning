import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/bottom_navigation/home/view/live_courses/subject_component.dart';

class SlideCourseSubject extends StatelessWidget {
  const SlideCourseSubject({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 15),
        SubjectsComponent(
          imageUrl:
              'https://th.bing.com/th/id/R.ee2256b1de5b9256a084cbd14beee6bc?rik=fbyd%2bzeuXfUznw&riu=http%3a%2f%2fchoosewashingtonstate.com%2fwp-content%2fuploads%2f2017%2f09%2fchemistry.jpg&ehk=lrKH9jWNXPxRy0hWB1akEV%2fp0%2fKfiRfMd94DoktTrJA%3d&risl=&pid=ImgRaw&r=0',
          titleText: 'Chemestry',
        ),
        SizedBox(height: 8),
        SubjectsComponent(
          imageUrl:
              'https://media.istockphoto.com/photos/atom-picture-id160380657?k=6&m=160380657&s=612x612&w=0&h=dFN_-AwwwtNWCqNwpi5Rx3U91-IxtnQjqZrjhY8sh_U=',
          titleText: 'Physics',
        ),
        SizedBox(height: 8),
        SubjectsComponent(
            imageUrl:
                "https://th.bing.com/th/id/OIP.gKMFNZElRpzigfTLwXnl_AHaHa?rs=1&pid=ImgDetMain",
            titleText: "Biology"),
        SizedBox(height: 10),
      ],
    );
  }
}
