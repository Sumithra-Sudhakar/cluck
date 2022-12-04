import 'package:cluck/widgets/batches_card.dart';
import 'package:cluck/widgets/coop_card.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/otp_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../widgets/dropdown_widget.dart';
//TODO: add pin input
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List user = ["user 1", "user 2", "user 3"];

  String chosenOptionUser = "user 1";
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
   @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomSliverView(
          columnList: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Choose your username",
                  style: GoogleFonts.raleway(
                      color: colors.primaryTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: dropDown(user, chosenOptionUser, (item) {
                setState(() {
                  chosenOptionUser= item;
                });
              }),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter your PIN",
                  style: GoogleFonts.raleway(
                      color: colors.primaryTextColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OTPInput(_fieldOne, true),
                  OTPInput(_fieldTwo, false),
                  OTPInput(_fieldThree, false),
                  OTPInput(_fieldFour, false),
                  OTPInput(_fieldFive, false)
                ],
              ),
            ),

        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.08),
          child: Align(
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
                      MaterialStateProperty.all(colors.greenCardBG),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0))),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.raleway(
                      fontSize: 17,
                      color: colors.greenText,
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),


          ),
        )



          ],
        ),
      ),
    );
  }
}
