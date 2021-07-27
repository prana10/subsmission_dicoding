import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subsmission_dicoding/pages/register.dart';

import '../const.dart';
import 'HomePage.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1B2B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 7),
            ColumnText(),
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            CarouselSlide(),
            SizedBox(height: MediaQuery.of(context).size.height / 15),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: ButtonOnboard(context),
            ),
            SizedBox(height: 10),
            RegisterText(context),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget RegisterText(BuildContext context) => Row(
        children: [
          SizedBox(width: 100,),
          Text(
            "Don't have account ? ",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 3),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RegisterPage();
                  },
                ),
              );
            },
            child: Text(
              "Register",
              style: GoogleFonts.poppins(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      );

  // ignore: non_constant_identifier_names
  Widget ButtonOnboard(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Get Started",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      );

  // ignore: non_constant_identifier_names
  Widget ColumnText() => Column(
        children: [
          Text(
            "Music App Dazbone",
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "A collection of music playlist\nfor me and my friend",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      );

  // ignore: non_constant_identifier_names
  Widget CarouselSlide() {
    return CarouselSlider(
      items: [
        ImageSlide("assets/summercast.jpg"),
        ImageSlide("assets/turok.jpg"),
        ImageSlide("assets/uno.jpg"),
        ImageSlide("assets/dreaming_of_golden_girl.jpg"),
      ],
      options: CarouselOptions(
        height: 311,
        autoPlay: true,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 700),
        viewportFraction: 0.7,
        disableCenter: false,
      ),
    );
  }

  Widget ImageSlide(String assetsImages) => Container(
        width: 278,
        height: 311,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Image.asset(
          assetsImages,
        ),
      );
}
