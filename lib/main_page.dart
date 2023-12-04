import 'package:flutter/material.dart';
import 'package:myumkt/dashboard/dashboard.dart';

class MyUmkt extends StatefulWidget {
  const MyUmkt({super.key});

  @override
  State<MyUmkt> createState() => _ContentState();
}

class _ContentState extends State<MyUmkt> {

  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = [
    const Dashboard(),
    const Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  const Center(
      child: Text(
        'Search',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 35,
          selectedItemColor: Colors.lightBlue,
          currentIndex: _selectedIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search',
            ),
          ]),
    );
  }
}
