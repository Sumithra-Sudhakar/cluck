import 'package:cluck/screens/addphoto.dart';
import 'package:cluck/screens/manage.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';

import 'home.dart';
import 'loadingscreen.dart';
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
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk.mm').format(now);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          elevation: 4,
          backgroundColor: colors.scaffoldcolor,
          selectedItemColor: colors.primarytextcolor,
          unselectedItemColor: Colors.white54,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: colors.scaffoldcolor,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none),
                label: 'Alert',
                backgroundColor: colors.scaffoldcolor),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Manage',
                backgroundColor: colors.scaffoldcolor),
          ],
        ),
        backgroundColor: colors.scaffoldcolor,
        body: _pages[_selectedIndex]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
