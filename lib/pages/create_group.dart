import 'package:flutter/material.dart';
import 'package:whatsapp/customui/contact_card.dart';
import 'package:whatsapp/models/chat_model.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({super.key});

  @override
  State<CreateGroup> createState() => CreateGroupState();
}

class CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groups = [];
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
              'New Group',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Add Participants',
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
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (contacts[index].select == false) {
                setState(() {
                  contacts[index].select = true;
                  groups.add(contacts[index]);
                });
              } else {
                setState(() {
                  contacts[index].select = false;
                  groups.remove(contacts[index]);
                });
              }
            },
            child: ContactCard(
              contact: contacts[index],
            ),
          );
        },
      ),
    );
  }
}
