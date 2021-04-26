import 'package:flutter/material.dart';

import 'package:grocery_shop/screens/shop_screen/shop_screen.dart';

import '../../constants.dart';
import 'widgets/nav_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List _tabIcons = [
    {'icon': Icon(Icons.home), 'title': 'Shop'},
    {'icon': Icon(Icons.phone), 'title': 'Explore'},
    {'icon': Icon(Icons.help), 'title': 'Cart'},
    {'icon': Icon(Icons.settings), 'title': 'Favorites'},
    {'icon': Icon(Icons.logout), 'title': 'Account'},
  ];

  final List<Widget> _tabs = [
    ShopScreen(),
    ShopScreen(),
    ShopScreen(),

    Container(),
    Container(),
  ];

  void onTabChanged(int index) {
    setState(() => currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[currentIndex],
      bottomNavigationBar: NavBar(
        tabIcons: _tabIcons,
        activeIndex: currentIndex,
        onTabChanged: onTabChanged,
      ),
    );
  }
}
