import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class AlertCardResponded extends StatelessWidget {
  final bool isCritical;
  final bool accepted;
  const AlertCardResponded({Key? key, required this.isCritical, required this.accepted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isCritical ? colors.redCardBG : colors.alertCardColor,
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
                      isCritical
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
                 accepted? Text("Accepted", style: GoogleFonts.raleway(
                   color: colors.errorText,
                   fontSize: 15
                 ),):Text("Dismissed", style: GoogleFonts.raleway(
                     color: colors.yellowText,
                     fontSize: 15
                 ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
