import 'package:cluck/screens/home/homescreen.dart';
import 'package:cluck/screens/home/manage.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/dropdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:google_fonts/google_fonts.dart';

class UpdateBatchMain extends StatefulWidget {
  const UpdateBatchMain({Key? key}) : super(key: key);

  @override
  State<UpdateBatchMain> createState() => _UpdateBatchMainState();
}

class _UpdateBatchMainState extends State<UpdateBatchMain> {
  List breed = ["breed 1", "breed 2"];
  List coop = ["coop 1", "coop 2", "coop 3"];
  List batch = ["batch 1", "batch 2", "batch 3"];
  String chosenOptionBreed = "breed 1";
  String chosenOptionCoop = "coop 1";
  String chosenOptionBatch = "batch 1";
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
        body: CustomSliverView(
          columnList: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors.proximityCardBG,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("RFID",
                            style: GoogleFonts.raleway(
                                color: colors.primaryTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "TAG12345QWERTY123",
                          style: GoogleFonts.raleway(
                              color: colors.primaryTextColor, fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: dropDown(breed, chosenOptionBreed, (item) {
                setState(() {
                  chosenOptionBreed = item;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: dropDown(coop, chosenOptionCoop, (item) {
                setState(() {
                  chosenOptionCoop = item;
                });
              }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: dropDown(batch, chosenOptionBatch, (item) {
                setState(() {
                  chosenOptionBatch = item;
                });
              }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Register death',
                        style: GoogleFonts.raleway(color: colors.errorText),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                       Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(colors.greenCardBG)),
                    child: Text(
                      "UPDATE",
                      style: GoogleFonts.raleway(
                        fontSize: 15,
                        color: colors.greenText,
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            )
          ],
        ));
  }
}
