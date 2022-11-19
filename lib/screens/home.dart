import 'dart:async';

import 'package:cluck/screens/login.dart';
import 'package:cluck/screens/settings.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';

import 'loadingscreen.dart';
import 'notifications.dart';
//TODO: TOP NAVIGATION PAGES
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String formattedDate = "";

  @override
  void initState(){
    formattedDate = DateFormat('kk:mm:ss').format(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      length: 2,
      child: Scaffold(
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
                    flex: 5,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: colors.iconbg,
                      shape: CircleBorder(),
                    ),
                    child: Icon(Icons.settings, color: colors.primarytextcolor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
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
                            child: Icon(
                              Icons.add,
                              color: colors.greentext,
                              size: 40,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoadingScreen(),
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
            const Expanded(
              child: Text(""),
              flex: 30,
            )
          ],
        ),

      ),
    );
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      formattedDate = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('kk:mm:ss').format(dateTime);
  }
}

