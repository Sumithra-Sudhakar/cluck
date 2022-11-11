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
            Expanded(
              flex: 1,
              child: Container(

              ),
            ),
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Manage", style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
