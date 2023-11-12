import 'package:ecommerce_app/components/drawer_items.dart';
import 'package:ecommerce_app/pages/drawerPages/about.dart';
import 'package:ecommerce_app/pages/drawerPages/explore.dart';
import 'package:ecommerce_app/pages/drawerPages/favorites.dart';
import 'package:ecommerce_app/pages/drawerPages/home.dart';
import 'package:ecommerce_app/pages/drawerPages/logout.dart';
import 'package:ecommerce_app/pages/drawerPages/profile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final drawerItems = [
    {'text': 'Home', 'icon': Icons.home, 'nextPage': const Home()},
    {
      'text': 'Favorites',
      'icon': Icons.favorite,
      'nextPage': const Favorites(),
    },
    {
      'text': 'Explore',
      'icon': Icons.explore,
      'nextPage': const Explore(),
    },
    {
      'text': 'Profile',
      'icon': Icons.person,
      'nextPage': const Profile(),
    },
    {
      'text': 'About',
      'icon': Icons.info,
      'nextPage': const About(),
    },
    {
      'text': 'Logout',
      'icon': Icons.logout,
      'nextPage': const Logout(),
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
