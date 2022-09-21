import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';
import '../screens.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List _screens = [
      HomeScreen(),
      LocationScreen(),
      DisposeMenuScreen(),
      MoreScreen(),
    ];
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          selectedIconTheme: IconThemeData(color: Colors.green),
          unselectedLabelStyle: TextStyle(color: Colors.grey),
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          onTap: (i) {
            setState(() {
              _selectedIndex = i;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(UniconsLine.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  UniconsLine.location_point,
                ),
                label: 'Location'),
            BottomNavigationBarItem(
                icon: Icon(Icons.delete_outline), label: 'Dispose Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Home'),
          ]),
    );
  }
}
