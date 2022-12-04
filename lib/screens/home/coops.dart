import 'dart:async';

import 'package:cluck/screens/login.dart';
import 'package:cluck/widgets/coop_card.dart';
import 'package:cluck/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;
import 'package:intl/intl.dart';

class CoopPage extends StatefulWidget {
  const CoopPage({Key? key}) : super(key: key);

  @override
  State<CoopPage> createState() => _CoopPageState();
}

class _CoopPageState extends State<CoopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: Column(
        children: [
          Row(
            children: [CoopCard(isNormal: true), CoopCard(isNormal: false)],
          ),
          Row(
            children: [CoopCard(isNormal: true), CoopCard(isNormal: false)],
          ),
          Row(
            children: [CoopCard(isNormal: true), CoopCard(isNormal: false)],
          ),
          Row(
            children: [CoopCard(isNormal: true), CoopCard(isNormal: false)],
          ),
        ],
      ),
    );
  }
}
