import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
//TODO: COMPLETE NEW BATCH PAGE
class AddBatch extends StatefulWidget {
  const AddBatch({Key? key}) : super(key: key);

  @override
  State<AddBatch> createState() => _AddBatchState();
}

class _AddBatchState extends State<AddBatch> {
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
    );
  }
}
