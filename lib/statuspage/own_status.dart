import 'package:flutter/material.dart';

class OwnStatus extends StatelessWidget {
  const OwnStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/image1.png"),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              radius: 10,
              child: Icon(
                Icons.add,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      title: Text(
        "My Status",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        "Tap to add Status",
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey[900],
        ),
      ),
    );
  }
}
