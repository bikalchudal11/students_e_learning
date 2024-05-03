import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalenderComponent extends StatelessWidget {
  String subName;
  String subImgUrl;
  String chapterName;
  CalenderComponent({
    super.key,
    required this.chapterName,
    required this.subName,
    required this.subImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 85,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(subImgUrl),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                subName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Chapter 2 :  ',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    TextSpan(
                        text: chapterName,
                        style: TextStyle(
                            color: Color.fromARGB(255, 68, 66, 66),
                            fontWeight: FontWeight.bold,
                            fontSize: 13))
                  ],
                ),
              ),
              SizedBox(height: 4),
              Text(
                "12:40-1:40 pm",
                style: TextStyle(color: Colors.grey, fontSize: 9),
              )
            ],
          ),
          SizedBox(width: 40),
          Icon(
            Icons.chevron_right_rounded,
            color: Colors.grey,
          ),
          SizedBox(width: 2),
        ],
      ),
    );
  }
}
