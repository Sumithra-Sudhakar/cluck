import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class VaccinationCard extends StatelessWidget {
  const VaccinationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors.proximityCardBG,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Vaccine ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.raleway(
                          color: colors.primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Dr. Manish Venkatachalam",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              Column(
                children: [
                  Text("11-11-2022",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 12,
                      )),
                  Text("B12",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 12,
                      )),
                  Text("Disease",
                      style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontSize: 15,
                      )),
                ],
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
