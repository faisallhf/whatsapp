import 'package:flutter/material.dart';
import 'package:whatsapp/customui/button_card.dart';
import 'package:whatsapp/customui/contact_card.dart';
import 'package:whatsapp/models/chat_model.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({super.key});

  @override
  State<SelectContact> createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  List<ChatModel> contacts = [
    ChatModel(
      name: "Faisal Khan",
      status: "I am a Flutter Developer",
    ),
    ChatModel(
      name: "Asfand yar Ali Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Developer",
      status: "I am a Web Developer",
    ),
    ChatModel(
      name: "Faisal Khan",
      status: "I am a Flutter Developer",
    ),
    ChatModel(
      name: "Asfand yar Ali Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Developer",
      status: "I am a Web Developer",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff128C7E),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '100 Contact',
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            ),
          ),
          PopupMenuTheme(
            data: PopupMenuThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      child: Text("Invite a friend"), value: "Invite a friend"),
                  PopupMenuItem(child: Text("Contacts"), value: "Contacts"),
                  PopupMenuItem(child: Text("Refresh"), value: "Refresh"),
                  PopupMenuItem(child: Text("Help"), value: "Help"),
                ];
              },
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ButtonCard(
              icon: Icons.group,
              name: "New Group",
            );
          } else if (index == 1) {
            return ButtonCard(
              icon: Icons.person_add,
              name: "New Contact",
            );
          }
          return ContactCard(
            contact: contacts[index - 2],
          );
        },
      ),
    );
  }
}
