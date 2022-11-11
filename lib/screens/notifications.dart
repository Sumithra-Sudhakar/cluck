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
      body: CustomSliverView(columnList: [
        SizedBox(
          height: 200,
        ),
        BatchCard(),
        AlertCard(iscritical: true),
        Row(
          children: [
            CoopCard(
              isnormal: true,
            ),
            CoopCard(
              isnormal: false,
            ),
          ],
        ),
        ProximityAlert(isStray: false, isHuman: false),
        ProximityAlert(isStray: true, isHuman: true),
        ProximityAlert(isStray: true, isHuman: false)
      ]),
    );
  }
}
