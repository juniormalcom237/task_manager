import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_flutter/Features/home/presentation/screen/home.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF0E9D2),
      // backgroundColor: Color(0xff282A3A),
      backgroundColor: Color(0xff222222),
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "Stay Focus",
                        style: GoogleFonts.amaticSc(
                          fontSize: 32,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Image.asset("assets/images/bg2.png"),
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Steady progress, without a mess",
                          style: GoogleFonts.poppins(
                            fontSize: 35,
                            height: 1.4,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Hey! A single place for your team to communicate, act on task, track progress and deliver goal with no stress",
                          style: TextStyle(
                            fontSize: 18,
                            wordSpacing: 1.5,
                            height: 1.4,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(HomeScreen.url);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff251749),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                        child: SizedBox(
                          height: 65,
                          width: MediaQuery.of(context).size.width * 0.84,
                          child: Center(
                            child: Text(
                              "🎯 Get started",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 92,
                      )
                    ],
                  ),
                  Positioned(
                    top: 40,
                    right: -80,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xff73A6CEFF),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -60,
                    top: MediaQuery.of(context).size.height * 0.55,
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(89, 255, 64, 129),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -70,
                    right: -100,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffE0D6B9FF),
                        // color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
