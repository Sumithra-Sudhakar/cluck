import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    List list = ["u1", "u2"];
    String selected ="u12";
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomSliverView(
          columnList: [
            Spacer(
              flex: 4,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Choose your username",
                style: GoogleFonts.raleway(
                    color: colors.primaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),


           //TODO: LOGIN SCREEN






          ],
        ),
      ),
    );
  }
}
