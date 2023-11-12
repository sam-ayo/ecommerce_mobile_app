import 'package:ecommerce_app/components/drawer_list_component.dart';
import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final List drawerItems;
  const DrawerItems({super.key, required this.drawerItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...drawerItems.map((e) {
          var text = e['text'] as String;
          var icon = e['icon'] as IconData;
          return DrawerListItem(text: text, icon: icon);
        })
      ],
    );
  }
}
