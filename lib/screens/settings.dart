import 'package:cluck/widgets/batches_card.dart';
import 'package:cluck/widgets/coop_card.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
//TODO: COMPLETE SETTINGS PAGE
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.scaffoldcolor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: colors.primarytextcolor,
          ),
        ),
        title: Text(
          "Settings",
          style: GoogleFonts.raleway(
              color: colors.primarytextcolor,
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: const CustomSliverView(
        columnList: [
          BatchCard(),
          CoopCard(isnormal: true)
        ],
      ),
    );
  }
}
