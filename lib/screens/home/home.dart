import 'dart:async';

import 'package:cluck/screens/login.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';

import '../loadingscreen.dart';

//TODO: TOP NAVIGATION PAGES
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String formattedDate = "";

  @override
  void initState() {
    formattedDate = DateFormat('kk:mm:ss').format(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: colors.scaffoldColor,
        body: CustomSliverView(
          columnList: [
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Row(
                children: [
                  const Spacer(),
                  Text(
                    "WELCOME",
                    style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: colors.iconBG,
                      shape: const CircleBorder(),
                    ),
                    child: Icon(Icons.logout, color: colors.primaryTextColor),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ));
                    },
                  ),
                  const Spacer()
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
                          formattedDate,
                          style: TextStyle(
                              fontFamily: '.SF Pro Text',
                              fontSize: 50,
                              fontWeight: FontWeight.w400,
                              color: colors.primaryTextColor),
                        ),
                        const Spacer(
                          flex: 4,
                        ),
                        InkWell(
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                shape: BoxShape.rectangle,
                                color: colors.greenCardBG,
                                border: Border.all(
                                  width: 1,
                                )),
                            child: Icon(
                              Icons.add,
                              color: colors.greenText,
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
                        const Spacer()
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "24°, light rainshowers",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: colors.primaryTextColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Akkaraisengapalli, Annur, India",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: colors.primaryTextColor),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: AppBar(
                backgroundColor: colors.scaffoldColor,
                bottom: TabBar(
                  unselectedLabelColor: Colors.white54,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: colors.primaryTextColor,
                  tabs: [
                    Tab(
                      child: Text(
                        "COOP",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.primaryTextColor,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "BATCHES",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.primaryTextColor,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: Column(
                children: [
                  Text("1", style: TextStyle(color: colors.primaryTextColor)),
                  Text("4")
                ],
              ),
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
