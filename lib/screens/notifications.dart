import 'package:cluck/widgets/batches_card.dart';
import 'package:cluck/widgets/coop_card.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/proximity_alert_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../widgets/alert_card.dart';

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: CustomSliverView(columnList: [
          SizedBox(
            height: 40,
          ),
         Row(
           children: [
             Align(
               alignment: Alignment.topLeft,
               child: Text(
                 "Alerts",
                 style: GoogleFonts.raleway(
                     color: colors.primarytextcolor,
                     fontWeight: FontWeight.bold,
                     fontSize: 35),
               ),
             ),
             Spacer(

             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: colors.iconbg,
                 shape: CircleBorder(),
               ),
               child: Icon(Icons.filter_alt_rounded, color: colors.primarytextcolor),
               onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => Notifications(),
                     ));
               },
             ),

           ],
         ),
          SizedBox(
            height: 50,
          ),
          ProximityAlert(isStray: true, isHuman: true),
          AlertCard(iscritical: true),
          AlertCard(iscritical: false),
          AlertCard(iscritical: true),
          AlertCard(iscritical: true),AlertCard(iscritical: true),
          AlertCard(iscritical: false),

        ]),
      ),
    );
  }
}
