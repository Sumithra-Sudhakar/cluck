import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class AlertCard extends StatefulWidget {
  final bool iscritical;

  const AlertCard({Key? key, required this.iscritical}) : super(key: key);

  @override
  State<AlertCard> createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.iscritical ? colors.redCardBG : colors.alertCardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      widget.iscritical
                          ? "Disease detected"
                          : "Possible disease detected.",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Text(
                      "Coop 1",
                      style: GoogleFonts.raleway(
                          color: colors.primaryTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "TAG12345QWERTY123",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Disease 1",
                    style: GoogleFonts.raleway(
                      color: colors.primaryTextColor,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {



                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                insetPadding: const EdgeInsets.all(20),
                                contentPadding: const EdgeInsets.all(30),
                                elevation: 5,
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                title: Text(
                                  "Are you sure you would like to accept?",
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: colors.primaryTextColor),
                                ),
                                actions: [
                                  Row(
                                    children: [
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "NO",
                                            style: GoogleFonts.raleway(
                                                fontWeight: FontWeight.w500,
                                                color: colors.errorText,
                                                fontSize: 15),
                                          )),
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {
                                             Navigator.pop(context);},
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  colors.greenCardBG)),
                                          child: Text(
                                            "YES",
                                            style: GoogleFonts.raleway(
                                              fontSize: 15,
                                              color: colors.greenText,
                                            ),
                                          )),
                                      const Spacer()
                                    ],
                                  ),

                                ],
                              );
                            });



                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(colors.redButtonBG)),
                      child: Text(
                        "ACCEPT",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.errorText,
                        ),
                      )),
                  TextButton(
                      onPressed: () {


                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                insetPadding: const EdgeInsets.all(20),
                                contentPadding: const EdgeInsets.all(30),
                                elevation: 5,
                                backgroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                title: Text(
                                  "Are you sure you would like to dismiss?",
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: colors.primaryTextColor),
                                ),
                                actions: [
                                  Row(
                                    children: [
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "NO",
                                            style: GoogleFonts.raleway(
                                                fontWeight: FontWeight.w500,
                                                color: colors.errorText,
                                                fontSize: 15),
                                          )),
                                      const Spacer(),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);},
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  colors.greenCardBG)),
                                          child: Text(
                                            "YES",
                                            style: GoogleFonts.raleway(
                                              fontSize: 15,
                                              color: colors.greenText,
                                            ),
                                          )),
                                      const Spacer()
                                    ],
                                  ),

                                ],
                              );
                            });





                      },
                      child: Text(
                        "DISMISS",
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                          color: colors.yellowText,
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
