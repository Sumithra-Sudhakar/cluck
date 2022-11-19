import 'package:cluck/widgets/alert_card_responded.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/proximity_alert_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../../widgets/alert_card.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
        child: CustomSliverView(columnList: [
          const SizedBox(
            height: 40,
          ),
         Row(
           children: [
             Align(
               alignment: Alignment.topLeft,
               child: Text(
                 "Alerts",
                 style: GoogleFonts.raleway(
                     color: colors.primaryTextColor,
                     fontWeight: FontWeight.bold,
                     fontSize: 35),
               ),
             ),
             const Spacer(

             ),
             TextButton(
               style: TextButton.styleFrom(
                 backgroundColor: colors.iconBG,
                 shape: const CircleBorder(),
               ),
               child: Icon(Icons.filter_alt_rounded, color: colors.primaryTextColor),
               onPressed: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (context) => const Notifications(),
                     ));
               },
             ),

           ],
         ),
          const SizedBox(
            height: 50,
          ),
          const ProximityAlert(isStray: true, isHuman: true),
          const AlertCard(iscritical: true),
          const AlertCard(iscritical: false),
          const AlertCardResponded(isCritical: true, accepted: false),
          const AlertCardResponded(isCritical: false, accepted: true),
          const AlertCard(iscritical: true),const AlertCard(iscritical: true),
          const AlertCard(iscritical: false),

        ]),
      ),
    );
  }
}
