

import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'loadingscreen.dart';
import 'notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages =[];
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk.mm').format(now);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar:  BottomNavigationBar(
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
              icon: Icon(Icons.settings),
              label: 'Manage',
                backgroundColor: colors.scaffoldcolor
            ),
          ],
        ),
        backgroundColor: colors.scaffoldcolor,
        body: CustomSliverView(
          columnList: [
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "WELCOME",
                    style: GoogleFonts.raleway(
                        color: colors.primarytextcolor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  Spacer(
                    flex: 4,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: colors.iconbg,
                      shape: CircleBorder(),
                    ),
                    child: Icon(Icons.settings, color: colors.primarytextcolor),
                    onPressed: () {

                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: colors.iconbg,
                      shape: CircleBorder(),
                    ),
                    child: Icon(Icons.notification_important_outlined,
                        color: colors.primarytextcolor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Notifications(),
                          ));
                    },
                  ),
                  Spacer()
                ],
              ),
            ),
            Expanded(

              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          "${formattedDate}",
                          style: TextStyle(
                              fontFamily: '.SF Pro Text',
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: colors.primarytextcolor),
                        ),
                        Spacer(
                          flex: 4,
                        ),
                        InkWell(
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                color: colors.greencardbg,
                                border: Border.all(
                                  width: 1,
                                )),
                            child: Icon(Icons.add, color: colors.greentext, size: 40,),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const LoadingScreen(),
                                ));
                          },
                        ),
Spacer()
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "24°, light rainshowers",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: colors.primarytextcolor),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Akkaraisengapalli, Annur, India",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: colors.primarytextcolor),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: AppBar(
                backgroundColor: colors.scaffoldcolor,
                bottom: TabBar(
                  unselectedLabelColor: Colors.white54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: colors.primarytextcolor,
                  tabs: [
                    Tab(
                      child: Text(
                        "COOP",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.primarytextcolor,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "BATCHES",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.primarytextcolor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text(""),
              flex: 30,
            )
          ],
        ),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
