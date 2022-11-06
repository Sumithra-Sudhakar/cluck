import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldcolor,
      body: CustomSliverView(columnList: [

         Container(
           height: 100,
          width: 100,
          color: colors.greencardbg,
           child: Column(
             children: [
               Text("Coop1", textAlign: TextAlign.left,
               style: GoogleFonts.raleway(
                 color: colors.greentext,
                 fontSize: 20
               ),
               ),
]
           )
      )
      ]),
    );
  }
}
