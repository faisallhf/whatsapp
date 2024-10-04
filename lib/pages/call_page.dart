import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          callCard(
            "Flutter Dev",
            Icons.call_missed,
            Colors.red,
            "October 5, 06:30 ",
            "assets/images/man4.jpg",
          ),
          callCard(
            "React Dev",
            Icons.call_made,
            Colors.green,
            "October 2, 03:30 ",
            "assets/images/man3.jpg",
          ),
          callCard(
            "Python Dev",
            Icons.call_missed,
            Colors.red,
            "October 1, 02:50 ",
            "assets/images/man2.jpg",
          ),
          callCard(
            "Laravel Dev",
            Icons.call_made,
            Colors.green,
            "September 30, 12:50 ",
            "assets/images/man4.jpg",
          ),
          callCard(
            "Game Dev",
            Icons.call_made,
            Colors.green,
            "September 30, 12:50 ",
            "assets/images/man3.jpg",
          ),
          callCard(
            "Flutter Dev",
            Icons.call_made,
            Colors.green,
            "September 30, 12:50 ",
            "assets/images/man2.jpg",
          ),
          callCard(
            "FrontEnd Dev",
            Icons.call_made,
            Colors.green,
            "September 30, 12:50 ",
            "assets/images/man4.jpg",
          ),
          callCard(
            "Game Dev",
            Icons.call_made,
            Colors.green,
            "September 30, 12:50 ",
            "assets/images/man3.jpg",
          ),
          callCard(
            "Flutter Dev",
            Icons.call_missed,
            Colors.red,
            "September 30, 12:50 ",
            "assets/images/man2.jpg",
          ),
        ],
      ),
    );
  }

  Widget callCard(String name, IconData iconData, Color iconColor, String time,
      String imagePath) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.5),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconData,
              size: 25,
              color: iconColor,
            ),
            SizedBox(width: 6),
            Text(
              time,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.call,
            size: 26,
            color: Colors.teal,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
