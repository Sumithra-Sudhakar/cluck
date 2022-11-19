import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class CoopCard extends StatefulWidget {
  final bool isnormal;
  const CoopCard({Key? key, required this.isnormal}) : super(key: key);

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
          color: widget.isnormal ? colors.greencardbg : colors.alertcardcolor,
        ),
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Coop 1",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    color:
                        widget.isnormal ? colors.greentext : colors.yellowtext,
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
                        color: widget.isnormal
                            ? colors.greentext
                            : colors.yellowtext,
                        size: 40,
                      ),
                      Text(
                        "28",
                        style: GoogleFonts.poppins(
                            color: widget.isnormal
                                ? colors.greentext
                                : colors.yellowtext,
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
                        widget.isnormal ? colors.greentext : colors.yellowtext,
                  ),
                  Text(
                    "120",
                    style: GoogleFonts.raleway(
                        color: widget.isnormal
                            ? colors.greentext
                            : colors.yellowtext,
                        fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.fastfood_sharp,
                    color:
                        widget.isnormal ? colors.greentext : colors.yellowtext,
                  ),
                  Text(
                    "50kg",
                    style: GoogleFonts.raleway(
                        color: widget.isnormal
                            ? colors.greentext
                            : colors.yellowtext,
                        fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
