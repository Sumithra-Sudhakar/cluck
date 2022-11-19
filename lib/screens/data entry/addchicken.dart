import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class AddChicken extends StatefulWidget {
  const AddChicken({Key? key}) : super(key: key);

  @override
  State<AddChicken> createState() => _AddChickenState();
}

class _AddChickenState extends State<AddChicken> {
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
          "Add new chicken",
          style: GoogleFonts.raleway(
              color: colors.primaryTextColor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomSliverView(
        columnList: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
          ),
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
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Container(
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
                    child: Text("WEIGHT",
                        style: GoogleFonts.raleway(
                            color: colors.primaryTextColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "0.750 kg",
                      style: GoogleFonts.raleway(
                          color: colors.primaryTextColor, fontSize: 22),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "RETRY",
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      color: colors.greenText,
                    ),
                  )),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(colors.greenCardBG)),
                  child: Text(
                    "CONFIRM",
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      color: colors.greenText,
                    ),
                  )),
              const Spacer()
            ],
          ),
          const Spacer()
        ],
      ),
    );
  }
}
