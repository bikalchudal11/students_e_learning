import 'package:flutter/material.dart';
import 'package:students_e_learning/src/features/bottom_navigation/chat/chat_page.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Chat List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            newMethod(
              'https://scontent.fktm10-1.fna.fbcdn.net/v/t1.6435-9/47681813_724250181263922_4558243109003067392_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=5f2048&_nc_ohc=mLZMx_uw7_IQ7kNvgEYjeYk&_nc_ht=scontent.fktm10-1.fna&oh=00_AfDHtvBq186CrytGzsJ-d_uLF2lYPe1AUQrlVcMtLLT0HA&oe=665E4E3E',
              'Justine Miral',
              'Hey there,',
              '5 min',
              context,
            ),
            newMethod(
                'https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?rs=1&pid=ImgDetMain',
                'Samir Adhakari',
                'k xa',
                '9 min',
                context),
            newMethod(
                'https://th.bing.com/th/id/OIP.484tbx2IMS2nF0WJk8EnlQAAAA?w=470&h=626&rs=1&pid=ImgDetMain',
                'Bikal chudal',
                'Where are you',
                '15 min',
                context),
            newMethod(
                'https://img.freepik.com/premium-photo/pixar-style-3d-animation-boy-glasses-cap_899449-20919.jpg',
                'Justine Miral',
                'Hey there ,whatsup',
                '20 min',
                context),
            newMethod(
                'https://th.bing.com/th/id/OIP.eKfT2PY0iBhrcLZQP-F-YwAAAA?rs=1&pid=ImgDetMain',
                'Sumit Dhamala',
                'How are you bro',
                '30 min',
                context),
          ],
        ),
      ),
    );
  }

  Widget newMethod(
    String imageUrl,
    String name,
    String msg,
    String time,
    BuildContext context,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()),
            );
          },
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              msg,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            trailing: Text(
              time,
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
