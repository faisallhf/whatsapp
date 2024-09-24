import 'package:flutter/material.dart';
import 'package:whatsapp/customui/custom_card.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/select_contact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  // LIST
  List<ChatModel> chats = [
    ChatModel(
      name: "Friends",
      isGroup: true,
      current_message: "Hi All",
      time: "09:50",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "Faisal Khan",
      isGroup: false,
      current_message: "Hi Ali",
      time: "09:15",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Rocky",
      isGroup: false,
      current_message: "How are you doing?",
      time: "06:30",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Asfand Yar Ali Khan",
      isGroup: false,
      current_message: "Hi there",
      time: "07:45",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Flutter Group",
      isGroup: true,
      current_message: "Hey there",
      time: "07:45",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "Flutter Course",
      isGroup: true,
      current_message: "hello flutter course",
      time: "07:49",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "Flutter bro",
      isGroup: false,
      current_message: "Hey boy",
      time: "08:00",
      icon: "person.svg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        backgroundColor: Color(0xff128C7E),
        child: Icon(
          Icons.chat,
          color: Colors.white,
          size: 30.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
      ),
    );
  }
}
