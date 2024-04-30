import 'package:flutter/material.dart';

class CourseComponent extends StatelessWidget {
  final double percentage;
  String title;
  String subtitle;
  Color progressColor;
  CourseComponent({
    super.key,
    required this.percentage,
    required this.title,
    required this.subtitle,
    required this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 240, 235, 235),
            borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          leading: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                '${percentage.toInt()}' + '%',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              CircularProgressIndicator(
                value: percentage / 100,
                strokeWidth: 3,
                backgroundColor:
                    const Color.fromARGB(255, 194, 191, 191).withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(progressColor),
              ),
            ],
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          ),
          subtitle: Text(subtitle,
              style: TextStyle(fontSize: 12, color: Colors.grey)),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
