import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/models/chat_model.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key, this.contact});
  final ChatModel? contact;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: SvgPicture.asset(
            "assets/icons/person_icon.svg",
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
            height: 35,
            width: 35,
          ),
          backgroundColor: Colors.blueGrey[200],
        ),
        title: Text(
          contact?.name ?? 'Unknown',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          contact?.status ?? 'No status',
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
