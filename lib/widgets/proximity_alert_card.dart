import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class ProximityAlert extends StatelessWidget {
  final bool isStray;
  final bool isHuman;
  const ProximityAlert({
    required this.isStray,
    required this.isHuman,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:colors.proximityCardBG,


        ),
child: Padding(
  padding: const EdgeInsets.all(12.0),
  child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text("Stray alert", style: GoogleFonts.raleway(
            fontSize: 14,
            color: colors.primaryTextColor,
            fontWeight: FontWeight.w400
          ),),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Text("Coop1",style: GoogleFonts.raleway(
                fontSize: 14,
                color: colors.primaryTextColor,

            ),),
            const Spacer(),
            Icon(isStray?(isHuman?Icons.man:Icons.animation_outlined):Icons.add, color: colors.primaryTextColor,),
            Text(isStray?(isHuman?" Human": " Animal"):" Chicken", style: GoogleFonts.raleway(
              fontSize: 14,
              color: colors.primaryTextColor,

            ))
          ],
        )
      ],
  ),
),
      ),
    );
  }
}
