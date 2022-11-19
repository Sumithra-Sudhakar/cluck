import 'package:cluck/screens/data%20entry/addphoto.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'dart:async';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override

  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => AddPhoto())));
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(
            flex: 4,
          ),
          CircularProgressIndicator(
            color: colors.primaryTextColor,
            strokeWidth: 2.0,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            "Please wait, loading...",
            style: GoogleFonts.raleway(
                color: colors.primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          Spacer(
            flex: 4,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Collecting information from camera, RFID tag and weighing scale",
              textAlign: TextAlign.center,

              style: GoogleFonts.raleway(
                  color: colors.primaryTextColor,
fontWeight: FontWeight.w100,
                  fontSize: 18),
            ),
          ),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
