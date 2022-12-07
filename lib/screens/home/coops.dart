import 'dart:async';

import 'package:cluck/screens/login.dart';
import 'package:cluck/widgets/coop_card.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';

import '../loadingscreen.dart';

class CoopPage extends StatefulWidget {
  const CoopPage({Key? key}) : super(key: key);

  @override
  State<CoopPage> createState() => _CoopPageState();
}

class _CoopPageState extends State<CoopPage> {
  String formattedDate = "";

  @override
  void initState() {
    formattedDate = DateFormat('kk:mm:ss').format(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.scaffoldColor,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomSliverView(columnList: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 0, 0, 20),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         "WELCOME",
            //         style: GoogleFonts.raleway(
            //             color: colors.primaryTextColor,
            //             fontWeight: FontWeight.w600,
            //             fontSize: 20),
            //       ),
            //       Align(
            //         alignment: Alignment.centerRight,
            //         child: TextButton(
            //           style: TextButton.styleFrom(
            //             backgroundColor: colors.iconBG,
            //             padding: const EdgeInsets.symmetric(
            //                 horizontal: 10.0, vertical: 10.0),
            //             shape: const CircleBorder(),
            //           ),
            //           child:
            //               Icon(Icons.logout, color: colors.primaryTextColor),
            //           onPressed: () {
            //             Navigator.push(
            //                 context,
            //                 MaterialPageRoute(
            //                   builder: (context) => const Login(),
            //                 ));
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
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
                    height: 20,
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
            Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CoopCard(isNormal: true),
                            CoopCard(isNormal: false)
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ]),
        ));
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
