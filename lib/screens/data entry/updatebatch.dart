import 'package:cluck/screens/data%20entry/updatemain.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class UpdateBatch extends StatefulWidget {
  const UpdateBatch({Key? key}) : super(key: key);

  @override
  State<UpdateBatch> createState() => _UpdateBatchState();
}

class _UpdateBatchState extends State<UpdateBatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colors.scaffoldColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colors.scaffoldColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: colors.primaryTextColor,
            ),
          ),
          title: Text(
            "Update batch",
            style: GoogleFonts.raleway(
                color: colors.primaryTextColor,
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Image.asset(
              "assets/updateimg.png",
              width: MediaQuery.of(context).size.width * 0.55,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Text(
                "Scan RFID tag of the chicken whose details you want to update",
                style: GoogleFonts.raleway(
                    fontSize: 17,
                    color: colors.primaryTextColor,
                    fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CircularProgressIndicator(
              color: colors.primaryTextColor,
              strokeWidth: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Text(
                "Waiting for data from RFID reader",
                style: GoogleFonts.raleway(
                    fontSize: 17,
                    color: colors.primaryTextColor,
                    fontWeight: FontWeight.w100),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  const Spacer(
                    flex: 6,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UpdateBatchMain(),
                          ));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(colors.greenCardBG)),
                    child: Text(
                      "CONFIRM",
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        color: colors.greenText,
                      ),
                    ),
                  ),
                  const Spacer()
                ],
              ),
            )
          ],
        ));
  }
}
