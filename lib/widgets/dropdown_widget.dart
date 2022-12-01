import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

Widget dropDown(listOfOptions, chosenOption, onChanged) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, bottom: 10),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: colors.textBoxColor),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          buttonColor: colors.textBoxColor,
          child: DropdownButton<dynamic>(
            dropdownColor: colors.textBoxColor,
            icon: const Padding(
              padding: EdgeInsets.only(right: 5),
              child: Icon(
                // Add this
                Icons.arrow_drop_down, // Add this
                // color: colors.errorColor, // Add this
              ),
            ),
            value: chosenOption,
            isExpanded: true,
            items: listOfOptions.map<DropdownMenuItem>((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(
                  value,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.raleway(
                      fontSize: 17, color: colors.textBoxTextColor),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            style: GoogleFonts.raleway(
                color: colors.textBoxTextColor, fontWeight: FontWeight.normal
                // decorationColor: colors.errorColor
                ),
          ),
        ),
      ),
    ),
  );
}
