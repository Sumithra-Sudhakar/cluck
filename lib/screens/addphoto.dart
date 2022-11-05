import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import 'loadingscreen.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldcolor,
      body: CustomSliverView(
        columnList: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "TAG12345QWERTY123",
                style: GoogleFonts.raleway(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: colors.primarytextcolor),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Text(
                  "Breed name 1",
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: colors.primarytextcolor),
                ),
                Spacer(),
                Text(
                  "1.5kg",
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: colors.primarytextcolor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.8,
              color: colors.greencardbg,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Report disease",
                      style: GoogleFonts.raleway(
                          fontWeight: FontWeight.w500,
                          color: colors.errortext,
                          fontSize: 15),
                    )),
              )
            ],
          ),
          Row(
            children: [
              Spacer(
                flex: 5,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoadingScreen(),
                        ));
                  },
                  child: Text(
                    "RETRY",
                    style: GoogleFonts.raleway(
                      fontSize: 15,
                      color: colors.greentext,
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          insetPadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.all(30),
                          elevation: 5,
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          title: Text(
                            "Record added Successfully",
                            style: GoogleFonts.raleway(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: colors.primarytextcolor),
                          ),
                          actions: [
                            Row(
                              children: [
                                Spacer(),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "END",
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w500,
                                          color: colors.errortext,
                                          fontSize: 15),
                                    )),
                                Spacer(),
                                TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                colors.greencardbg)),
                                    child: Text(
                                      "ADD MORE",
                                      style: GoogleFonts.raleway(
                                        fontSize: 15,
                                        color: colors.greentext,
                                      ),
                                    )),
                                Spacer()
                              ],
                            ),

                          ],
                        );
                      });
                },
                child: Text(
                  "CONFIRM",
                  style: GoogleFonts.raleway(
                    fontSize: 15,
                    color: colors.greentext,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(colors.greencardbg)),
              ),
              Spacer()
            ],
          )
        ],
      ),
    );
  }
}
