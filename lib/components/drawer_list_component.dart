import 'package:flutter/material.dart';

class DrawerListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const DrawerListItem({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        iconColor: Colors.white,
      ),
    );
  }
}
