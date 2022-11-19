import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class BatchCard extends StatefulWidget {
  const BatchCard({Key? key}) : super(key: key);

  @override
  State<BatchCard> createState() => _BatchCardState();
}

class _BatchCardState extends State<BatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors.greencardbg,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Text(
                  "Batch 1",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.primarytextcolor),
                ),
                Spacer(
                  flex: 4,
                ),
                Icon(
                  Icons.animation_outlined,
                  color: colors.greentext,
                ),
                Text(
                  "100/400",
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.greentext),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Breed name 1",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.primarytextcolor),
                ),
                Spacer(
                  flex: 4,
                ),
                Icon(
                  Icons.animation_outlined,
                  color: colors.errortext,
                ),
                Text(
                  "20",
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.errortext),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Coop 1",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.primarytextcolor),
                ),
                Spacer(
                  flex: 4,
                ),
                Icon(
                  Icons.animation_outlined,
                  color: colors.yellowtext,
                ),
                Text(
                  "5",
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.yellowtext),
                ),
              ],
            ),
            Row(
              children: [

                Spacer(),
                Text(
                  "10-12-2021",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.raleway(
                      fontSize: 18, color: colors.primarytextcolor),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ]),
        ));
  }
}
