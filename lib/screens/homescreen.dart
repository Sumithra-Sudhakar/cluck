import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Scaffold(
      backgroundColor: colors.scaffoldcolor,
      body: CustomSliverView(
        columnList: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Row(
              children: [
                Spacer(),
                Text(
                  "WELCOME",
                  style: GoogleFonts.raleway(
                      color: colors.primarytextcolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Spacer(
                  flex: 4,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colors.iconbg,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.settings, color: colors.primarytextcolor),
                  onPressed: () {},
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: colors.iconbg,
                    shape: CircleBorder(),
                  ),
                  child: Icon(Icons.notification_important_outlined,
                      color: colors.primarytextcolor),
                  onPressed: () {},
                ),
                Spacer()
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Text(
                    "${now.hour}.${now.minute}",
                    style: TextStyle(
                        fontFamily: '.SF Pro Text',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: colors.primarytextcolor),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "24°, light rainshowers",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: colors.primarytextcolor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Akkaraisengapalli, Annur, India",
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: colors.primarytextcolor),
                  )
                ],
              ),
            ),
          ),
          Expanded(flex: 8, child: Text(""))
        ],
      ),
    );
  }
}
