import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/components/drawer.dart';
import 'package:ecommerce_app/pages/appbar.dart';
import 'package:ecommerce_app/pages/homepage/cart.dart';
import 'package:ecommerce_app/pages/homepage/shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedNav = 0;
  void onTabChange(index) {
    setState(() {
      selectedNav = index;
    });
  }

  List<Widget> pages = [const Shop(), const Cart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarDrawer(),
      ),
      body: pages[selectedNav],
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: MyDrawer(),
      ),
      bottomNavigationBar:
          BottomNavBar(onTabChange: (index) => onTabChange(index)),
    );
  }
}
