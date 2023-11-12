import 'package:ecommerce_app/components/drawer_items.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final drawerItems = [
    {
      'text': 'Home',
      'icon': Icons.home,
    },
    {
      'text': 'Favorites',
      'icon': Icons.favorite,
    },
    {
      'text': 'Explore',
      'icon': Icons.explore,
    },
    {
      'text': 'Profile',
      'icon': Icons.person,
    },
    {
      'text': 'About',
      'icon': Icons.info,
    },
    {
      'text': 'Logout',
      'icon': Icons.logout,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DrawerHeader(
          child: Image.asset(
            'lib/assets/images/mainlogo.png',
            color: Colors.white,
            height: 200,
            width: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Divider(
            color: Colors.grey[800],
          ),
        ),
        DrawerItems(
          drawerItems: drawerItems,
        ),
      ],
    );
  }
}
