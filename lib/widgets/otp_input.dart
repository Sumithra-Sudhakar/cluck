import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class OTPInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OTPInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: colors.primaryTextColor,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            counterText: '',
            hintStyle: GoogleFonts.raleway(
                color: colors.textBoxColor, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
