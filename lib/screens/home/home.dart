import 'dart:async';

import 'package:cluck/screens/home/batches.dart';
import 'package:cluck/screens/home/coops.dart';
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
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: colors.scaffoldColor,
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Text(
              "WELCOME",
              style: GoogleFonts.raleway(
                  color: colors.primaryTextColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
          ),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: colors.iconBG,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 10.0),
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
            ),
          ],
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
        body: TabBarView(
          children: [CoopPage(), BatchPage()],
        ),
      ),
    );
  }
}
