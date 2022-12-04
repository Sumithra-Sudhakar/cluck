import 'package:cluck/screens/home/manage.dart';
import 'package:cluck/widgets/date_picker.dart';
import 'package:cluck/widgets/textbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../../widgets/custom_sliver_widget.dart';
import '../../widgets/dropdown_widget.dart';

class AddVaccination extends StatefulWidget {
  const AddVaccination({Key? key}) : super(key: key);

  @override
  State<AddVaccination> createState() => _AddVaccinationState();
}

class _AddVaccinationState extends State<AddVaccination> {
  List batch = ["batch 1", "batch 2", "batch 3"];

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
          "Add Vaccination",
          style: GoogleFonts.raleway(
              color: colors.primaryTextColor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: CustomSliverView(
        columnList: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: dropDown(batch, chosenOptionBatch, (item) {
              setState(() {
                chosenOptionBatch = item;
              });
            }),
          ),
          const TextBoxField(
              title: "Vaccine Name",
              hint: "Enter Vaccine Name",
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              light: false),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: DatePickerWidget(context: context),
          ),
          const TextBoxField(
              title: "Dosage",
              hint: "Enter  Dosage",
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              light: false),
          const TextBoxField(
              title: "Doctor Name",
              hint: "Enter Doctor Name",
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              light: false),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(
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
      ),
    );
  }
}
