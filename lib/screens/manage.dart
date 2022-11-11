import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class Manage extends StatelessWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomSliverView(
          columnList: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Manage",
                style: GoogleFonts.raleway(
                    color: colors.primarytextcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width * 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.proximitycardbg,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/chicken.png",
                        height: MediaQuery.of(context).size.height * 0.18,
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: colors.managecadrbg,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Add new batch",
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.raleway(
                                      fontSize: 18,
                                      color: colors.primarytextcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Register tag, and initial weight for\n incoming batches ",
                                style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  color: colors.primarytextcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width * 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.proximitycardbg,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/weight.png",
                        height: MediaQuery.of(context).size.height * 0.18,
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: colors.managecadrbg,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Health data entry",
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.raleway(
                                      fontSize: 18,
                                      color: colors.primarytextcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Record weight and assess\n for diseases ",
                                style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  color: colors.primarytextcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width * 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.proximitycardbg,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/vaccine.png",
                        height: MediaQuery.of(context).size.height * 0.18,
                      ),
                      Spacer(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          color: colors.managecadrbg,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Vaccinations",
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                  style: GoogleFonts.raleway(
                                      fontSize: 18,
                                      color: colors.primarytextcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Review vaccination details, \nadd vaccination records",
                                style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  color: colors.primarytextcolor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
