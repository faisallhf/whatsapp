import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/models/chat_model.dart';
import 'package:whatsapp/pages/message_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, this.chatModel});

  final ChatModel? chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MessagePage(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blueAccent,
              child: SvgPicture.asset(
                chatModel?.isGroup == true
                    ? "assets/icons/groups_icon.svg"
                    : "assets/icons/person_icon.svg",
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                height: 35,
                width: 35,
              ),
            ),
            title: Text(
              chatModel?.name ?? "Unknown",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 3),
                Expanded(
                  // Ensure proper layout for long messages
                  child: Text(
                    chatModel?.current_message ?? "Unknown",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                    overflow: TextOverflow.ellipsis, // Prevent overflow
                  ),
                ),
              ],
            ),
            trailing: Text(
              chatModel?.time ?? "Unknown",
              style: TextStyle(fontSize: 12), // Optional: make it smaller
            ),
          ),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}
