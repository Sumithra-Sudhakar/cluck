import 'package:cluck/widgets/alert_card_responded.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:cluck/widgets/dropdown_widget.dart';
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
  String filterOption = "All";

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Alerts",
                    style: GoogleFonts.raleway(
                        color: colors.primaryTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 35),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                child: dropDown(
                    ["All", "Alerts", "Warnings", "Diseases"], filterOption,
                    (item) {
                  setState(() {
                    filterOption = item;
                  });
                }),
              )
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
          const AlertCard(iscritical: true),
          const AlertCard(iscritical: true),
          const AlertCard(iscritical: false),
        ]),
      ),
    );
  }
}
