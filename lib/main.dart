import 'package:cluck/screens/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:cluck/utils/colors.dart' as colors;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cluck-Cluck',
      theme: ThemeData(


      ),
      home: const HomePage(),
    );
  }
}

