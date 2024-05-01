import 'package:flutter/material.dart';

class SubjectsComponent extends StatelessWidget {
  String imageUrl;
  String titleText;
  String subtitleText;

  SubjectsComponent(
      {super.key,
      required this.imageUrl,
      required this.titleText,
      this.subtitleText = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(imageUrl)),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        title: Text(
          titleText,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          subtitleText,
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.grey,
        ),
      ),
    );
  }
}
