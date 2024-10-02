import 'package:flutter/material.dart';
import 'package:whatsapp/customui/avatar_card.dart';
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
      name: "Asfand Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Dev",
      status: "I am a Web Developer",
    ),
    ChatModel(
      name: "Faisal Khan",
      status: "I am a Flutter Developer",
    ),
    ChatModel(
      name: "Asfand Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Dev",
      status: "I am a Web Developer",
    ),
    ChatModel(
      name: "Faisal Khan",
      status: "I am a Flutter Developer",
    ),
    ChatModel(
      name: "Asfand Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Dev",
      status: "I am a Web Developer",
    ),
    ChatModel(
      name: "Faisal Khan",
      status: "I am a Flutter Developer",
    ),
    ChatModel(
      name: "Asfand Khan",
      status: "I am a UI/UX Designer",
    ),
    ChatModel(
      name: "Flutter Dev",
      status: "I am a Web Developer",
    ),
  ];
  List<ChatModel> groupmember = [];
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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groups.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  if (contacts[index - 1].select == false) {
                    setState(() {
                      contacts[index - 1].select = true;
                      groups.add(contacts[index - 1]);
                    });
                  } else {
                    setState(() {
                      contacts[index - 1].select = false;
                      groups.remove(contacts[index - 1]);
                    });
                  }
                },
                child: ContactCard(
                  contact: contacts[index - 1],
                ),
              );
            },
          ),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: contacts.length,
                        itemBuilder: (context, index) {
                          if ((contacts[index].select == true)) {
                            return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groups.remove(contacts[index]);
                                  });
                                },
                                child: AvatarCard(contact: contacts[index]));
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                    Divider(thickness: 1),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
