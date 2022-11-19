import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class CoopCard extends StatefulWidget {
  final bool isNormal;
  const CoopCard({Key? key, required this.isNormal}) : super(key: key);

  @override
  State<CoopCard> createState() => _CoopCardState();
}
//TODO: DIALOGUE BOX FOR MODIFYING COOP VALUES
class _CoopCardState extends State<CoopCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped");
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.isNormal ? colors.greenCardBG : colors.alertCardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Coop 1",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(
                        Icons.stay_current_portrait_outlined,
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        size: 40,
                      ),
                      Text(
                        "28",
                        style: GoogleFonts.poppins(
                            color: widget.isNormal
                                ? colors.greenText
                                : colors.yellowText,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.animation_outlined,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                  Text(
                    "120",
                    style: GoogleFonts.raleway(
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.fastfood_sharp,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                  Text(
                    "50kg",
                    style: GoogleFonts.raleway(
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
