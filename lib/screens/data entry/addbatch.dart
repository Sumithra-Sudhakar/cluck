import 'package:cluck/widgets/date_picker.dart';
import 'package:cluck/widgets/textbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../../widgets/custom_sliver_widget.dart';
import '../../widgets/dropdown_widget.dart';


class AddBatch extends StatefulWidget {
  const AddBatch({Key? key}) : super(key: key);

  @override
  State<AddBatch> createState() => _AddBatchState();
}

class _AddBatchState extends State<AddBatch> {
  List breed = ["breed 1", "breed 2"];
  List coop = ["coop 1", "coop 2", "coop 3"];
  String chosenOptionBreed = "breed 1";
  String chosenOptionCoop = "coop 1";
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
          "Add new batch",
          style: GoogleFonts.raleway(
              color: colors.primaryTextColor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomSliverView(
        columnList: [
          const TextBoxField(
              title: "Batch Name",
              hint: "Enter Batch Name",
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              light: false),
         const  TextBoxField(
              title: "Bird Count",
              hint: "Enter number of new birds",
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              light: false),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: DatePickerWidget(context: context),
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
            child: dropDown(breed, chosenOptionBreed, (item) {
              setState(() {
                chosenOptionBreed = item;
              });
            }),
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
                    Navigator.pop(context);
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
      ),
    );
  }
}
