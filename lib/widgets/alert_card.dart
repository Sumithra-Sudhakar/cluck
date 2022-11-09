import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class AlertCard extends StatefulWidget {
  const AlertCard({Key? key}) : super(key: key);

  @override
  State<AlertCard> createState() => _AlertCardState();
}

class _AlertCardState extends State<AlertCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colors.alertcardcolor,

      ),
      child: Padding(
        padding: EdgeInsets.all(12),
       child:  Column(
         children: [
            Row(
              children: [
                Text("New alert ", style: GoogleFonts.raleway(
                  color: colors.yellowtext,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),),
                Text("Possible disease detected.", style: GoogleFonts.raleway(
                    color: colors.primarytextcolor,
                    fontSize: 15,

                ),),
              ],
            ),
           Row(
             children: [
               Text("Coop 1", style: GoogleFonts.raleway(
                   color: colors.primarytextcolor,
                   fontSize: 15,
                   fontWeight: FontWeight.bold
               ),),
               Spacer(),
               Text("TAG12345QWERTY123", style: GoogleFonts.raleway(
                 color: colors.primarytextcolor,
                 fontSize: 15,

               ),),
             ],
           ),
    Row(
    children: [
      Spacer(),
    TextButton(
    onPressed: () {},
    style: ButtonStyle(
    backgroundColor:
    MaterialStateProperty.all(colors.yellowbuttonbg)),
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
