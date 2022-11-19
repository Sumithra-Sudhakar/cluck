import 'package:cluck/screens/home/manage.dart';
import 'package:flutter/material.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'home.dart';
import 'notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [Home(), Notifications(), Manage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
            elevation: 4,
            backgroundColor: colors.bottomNavigationBG,

            selectedItemColor: colors.primaryTextColor,
            unselectedItemColor: Colors.white54,

            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'Home',
                backgroundColor: colors.scaffoldColor,
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.notifications_none),
                  label: 'Alert',
                  backgroundColor: colors.scaffoldColor),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.settings),
                  label: 'Manage',
                  backgroundColor: colors.scaffoldColor),
            ],
          ),
        ),
        backgroundColor: colors.scaffoldColor,
        body: _pages[_selectedIndex]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
