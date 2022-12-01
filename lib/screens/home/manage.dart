import 'package:cluck/screens/data%20entry/addbatch.dart';
import 'package:cluck/screens/data%20entry/addchicken.dart';
import 'package:cluck/screens/vaccination.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../data entry/updatebatch.dart';

class Manage extends StatelessWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      appBar: AppBar(
        title: Text(
          "Manage",
          style: GoogleFonts.raleway(
              color: colors.primaryTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        elevation: 0,
        backgroundColor: colors.scaffoldColor,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CustomSliverView(
          columnList: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddBatch(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors.proximityCardBG,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/chicken.png",
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: colors.manageCardBG,
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
                                        color: colors.primaryTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Register tag, and initial weight for\n incoming batches ",
                                    style: GoogleFonts.raleway(
                                      fontSize: 12,
                                      color: colors.primaryTextColor,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddChicken(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors.proximityCardBG,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/weight.png",
                          height: MediaQuery.of(context).size.height * 0.12,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: colors.manageCardBG,
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
                                        color: colors.primaryTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Record weight and assess for diseases",
                                    style: GoogleFonts.raleway(
                                      fontSize: 12,
                                      color: colors.primaryTextColor,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Vaccination()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors.proximityCardBG,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/vaccine.png",
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: colors.manageCardBG,
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
                                        color: colors.primaryTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Review vaccination details, \nadd vaccination records",
                                    style: GoogleFonts.raleway(
                                      fontSize: 12,
                                      color: colors.primaryTextColor,
                                    ),
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateBatch(),
                      ));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: colors.proximityCardBG,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/chicken.png",
                          height: MediaQuery.of(context).size.height * 0.18,
                        ),
                        const Spacer(),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: colors.manageCardBG,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Update batch",
                                    maxLines: 2,
                                    overflow: TextOverflow.visible,
                                    style: GoogleFonts.raleway(
                                        fontSize: 18,
                                        color: colors.primaryTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Tag diseases, death and sales.",
                                    style: GoogleFonts.raleway(
                                      fontSize: 12,
                                      color: colors.primaryTextColor,
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
