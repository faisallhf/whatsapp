import 'package:flutter/material.dart';
import 'package:whatsapp/statuspage/other_status.dart';
import 'package:whatsapp/statuspage/own_status.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              elevation: 8,
              onPressed: () {},
              child: Icon(
                Icons.edit,
                color: Colors.blueGrey[900],
              ),
            ),
          ),
          SizedBox(height: 13),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.greenAccent[700],
            elevation: 5,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OwnStatus(),
            label("Recent Updates"),
            OtherStatus(
              name: "React Dev",
              imageName: "assets/images/man2.jpg",
              time: "06:30",
              isSeen: false,
              noOfStatus: 3,
            ),
            OtherStatus(
              name: "Flutter Dev",
              imageName: "assets/images/man3.jpg",
              time: "09:35",
              isSeen: false,
              noOfStatus: 1,
            ),
            OtherStatus(
              name: "Python Dev",
              imageName: "assets/images/man4.jpg",
              time: "6:40",
              isSeen: false,
              noOfStatus: 4,
            ),
            SizedBox(height: 10),
            label("Viewed Updates"),
            OtherStatus(
              name: "Flutter Dev",
              imageName: "assets/images/man3.jpg",
              time: "04:50",
              isSeen: true,
              noOfStatus: 3,
            ),
            OtherStatus(
              name: "Laravel Dev",
              imageName: "assets/images/man2.jpg",
              time: "6:40",
              isSeen: true,
              noOfStatus: 2,
            ),
          ],
        ),
      ),
    );
  }

  Widget label(String labelName) {
    return Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 7),
        child: Text(
          labelName,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
