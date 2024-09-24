import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({super.key, this.name, this.icon});
  final String? name;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: Icon(
            icon,
            size: 26,
            color: Colors.white,
          ),
          backgroundColor: Color(0xFF25D366),
        ),
        title: Text(
          name ?? 'Unnamed',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
