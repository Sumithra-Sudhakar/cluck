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
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.iscritical ? colors.redcardbg : colors.alertcardcolor,
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
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
                      color: colors.primarytextcolor,
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
                        color: colors.primarytextcolor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "TAG12345QWERTY123",
                    style: GoogleFonts.raleway(
                      color: colors.primarytextcolor,
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
                    color: colors.primarytextcolor,
                    fontSize: 15,
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(colors.redbuttonbg)),
                    child: Text(
                      "ACCEPT",
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        color: colors.errortext,
                      ),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "DISMISS",
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        color: colors.yellowtext,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
