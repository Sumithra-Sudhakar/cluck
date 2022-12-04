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
        style: GoogleFonts.raleway(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20.0),
        controller: controller,
        maxLength: 1,
        cursorColor: colors.primaryTextColor,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1.0, style: BorderStyle.solid)
            ),
            fillColor: colors.textBoxColor,
            filled: true,
            counterText: '',
            hintStyle: GoogleFonts.raleway(
                color: colors.textBoxTextColor, fontSize: 24.0,fontWeight: FontWeight.w600)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
