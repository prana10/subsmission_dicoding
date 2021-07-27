import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subsmission_dicoding/pages/onboarding_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> OpenYoutube(String url) async {
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1A1B2B),
        leading: GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return OnboardingPage();
                  },
                ),
              );
            });
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 17,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(context),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube(
                    "https://www.youtube.com/watch?v=ZxxT627S0aE");
              },
              child:
                  ContainList("assets/turok.jpg", "Turok - Contra4", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube(
                    "https://www.youtube.com/watch?v=kbGYV_CNDY4");
              },
              child:
                  ContainList("assets/uno.jpg", "Rainbow Flannel", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube(
                    "https://www.youtube.com/watch?v=aE2xRtX5t38");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - B.A.S.A.R.A", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=4Wk7i8fZNVM");
              },
              child:
                  ContainList("assets/summercast.jpg", "Summercast", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube(
                    "https://www.youtube.com/watch?v=hpVgWZ0rij0");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Dante, i missed u", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube(
                    "https://www.youtube.com/watch?v=Xn4R0TMFmZY");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Perfect Dark", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=Qc4jaNiU9tY");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Iron Fist", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=yE9QPtVRoNc");
              },
              child: ContainList("assets/dreaming_of_golden_girl.jpg",
                  "Dreaming of golden girl", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=lMxgs0R6AbA");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - metal gear slut", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=NeZUt1o6FDU");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Turnbull AC", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=uns3osDQfYk");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Intro: Son of Stone", "DAZBONE"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () async {
                await OpenYoutube("https://www.youtube.com/watch?v=oBvvbp2nokc");
              },
              child: ContainList(
                  "assets/turok.jpg", "Turok - Lost Part of hyrule", "DAZBONE"),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget ContainList(String ImageName, String title, String sub_title) =>
      SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Row(
          children: [
            SizedBox(width: 5),
            Image.asset(
              ImageName,
              width: 58,
              height: 54,
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  sub_title,
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_vert,
              size: 25,
            ),
            SizedBox(width: 10),
          ],
        ),
      );

  Widget Header(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 5.2,
      decoration: BoxDecoration(
        color: Color(0xff1A1B2B),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chill ",
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        AnimatedTextKit(
                          stopPauseOnTap: true,
                          totalRepeatCount: 100,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              "Time",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Sunday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Monday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Tuesday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Wednesday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Thursday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Friday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                            TypewriterAnimatedText(
                              "Saturday",
                              textStyle: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                              ),
                              speed: Duration(milliseconds: 80),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      "12 official audio  -  25 minutes",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "Created by DAZBONE",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
