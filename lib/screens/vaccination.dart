import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/vaccination_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
//TODO: ADD VACCINATION RECORD PAGE
class Vaccination extends StatelessWidget {
  const Vaccination({Key? key}) : super(key: key);

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
          "Vaccinations",
          style: GoogleFonts.raleway(
              color: colors.primaryTextColor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: colors.greenButtonBG,
              shape: const CircleBorder(),
            ),
            child: Icon(
              Icons.add,
              color: colors.greenText,
              size: 35,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: const CustomSliverView(
        columnList: [
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
          VaccinationCard(),
        ],
      ),
    );
  }
}
