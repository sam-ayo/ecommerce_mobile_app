import 'package:flutter/material.dart';

class DrawerListItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final Widget nextWidget;
  const DrawerListItem(
      {super.key,
      required this.text,
      required this.icon,
      required this.nextWidget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => nextWidget)),
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
