import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cluck/utils/colors.dart' as colors;

import '../screens/loadingscreen.dart';

class CoopCard extends StatefulWidget {
  final bool isNormal;
  const CoopCard({Key? key, required this.isNormal}) : super(key: key);

  @override
  State<CoopCard> createState() => _CoopCardState();
}

//TODO: DIALOGUE BOX FOR MODIFYING COOP VALUES
class _CoopCardState extends State<CoopCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("tapped");
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                contentPadding: const EdgeInsets.all(30),
                elevation: 5,
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                content: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/coop.png",
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start  ,
                            children: [
                              Text(
                                "Coop1",
                                textAlign: TextAlign.start,
                                style: GoogleFonts.raleway(
                                    color: colors.primaryTextColor,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Breed name 1",
                                style: GoogleFonts.raleway(
                                    color: colors.primaryTextColor,
                                    fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.animation,
                                    color: colors.primaryTextColor,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "122",
                                      style: GoogleFonts.raleway(
                                          color: colors.primaryTextColor,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.emoji_food_beverage,
                                    color: colors.primaryTextColor,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "54Kg",
                                      style: GoogleFonts.raleway(
                                          color: colors.primaryTextColor,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.thermostat,size: 45,color: colors.primaryTextColor,),
                                Text('28°',
                                style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w400,
                                  color: colors.primaryTextColor,
                                  fontSize: 40
                                ),)
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.water_drop_outlined,size: 40,color: colors.primaryTextColor,),
                                Text('80%°',
                                  style: GoogleFonts.raleway(
                                      fontWeight: FontWeight.w400,
                                      color: colors.primaryTextColor,
                                      fontSize: 40
                                  ),)
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const LoadingScreen(),
                                      ));
                                },
                                child: Text(
                                  "MODIFY",
                                  style: GoogleFonts.raleway(
                                    fontSize: 15,
                                    color: colors.greenText,
                                  ),
                                )),
                            TextButton(
                              onPressed: () {

                              },
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      colors.greenCardBG)),
                              child: Text(
                                "CONFIRM",
                                style: GoogleFonts.raleway(
                                  fontSize: 15,
                                  color: colors.greenText,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.isNormal ? colors.greenCardBG : colors.alertCardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Coop 1",
                  style: GoogleFonts.raleway(
                    fontSize: 18,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                ),
              ),
              Center(
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Icon(
                        Icons.stay_current_portrait_outlined,
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        size: 40,
                      ),
                      Text(
                        "28",
                        style: GoogleFonts.poppins(
                            color: widget.isNormal
                                ? colors.greenText
                                : colors.yellowText,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.animation_outlined,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                  Text(
                    "120",
                    style: GoogleFonts.raleway(
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        fontSize: 20),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.fastfood_sharp,
                    color:
                        widget.isNormal ? colors.greenText : colors.yellowText,
                  ),
                  Text(
                    "50kg",
                    style: GoogleFonts.raleway(
                        color: widget.isNormal
                            ? colors.greenText
                            : colors.yellowText,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
