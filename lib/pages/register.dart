import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subsmission_dicoding/pages/HomePage.dart';
import 'package:subsmission_dicoding/pages/login.dart';

import 'onboarding_screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _selected = false;
  void OnCheckboxupdate(bool value) {
    setState(() {
      this._selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1A1B2B),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return OnboardingPage();
                  },
                ),
              );
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
              color: Colors.white,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff1A1B2B),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/Playlist-pana.png",
                  width: 380,
                  height: 320,
                ),
                SizedBox(height: 25),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(height: 30),
                        ColumnText(),
                        SizedBox(height: 10),
                        InputData("Name"),
                        SizedBox(height: 10),
                        InputData("Email"),
                        SizedBox(height: 10),
                        InputData("Password"),
                        SizedBox(height: 30),
                        privacyPolicy(),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            buttonCustom("Register"),
                            SizedBox(width: 20),
                            buttonCustomOutline("Sign in"),
                          ],
                        ),
                        //SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget privacyPolicy() => Row(
        children: [
          SizedBox(width: 13),
          Checkbox(
            value: this._selected,
            onChanged: (bool? value) {
              OnCheckboxupdate(value!);
            },
          ),
          SizedBox(width: 5),
          Text(
            "I agree to the ",
            style: GoogleFonts.poppins(
              color: Colors.black,
            ),
          ),
          Text(
            "Term ",
            style: GoogleFonts.poppins(
              color: Colors.blue,
            ),
          ),
          Text(
            "and ",
            style: GoogleFonts.poppins(
              color: Colors.black,
            ),
          ),
          Text(
            "Privacy Policy.",
            style: GoogleFonts.poppins(
              color: Colors.blue,
            ),
          ),
        ],
      );

  Widget buttonCustom(String title) => GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return HomePage();
                },
              ),
            );
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.width / 10,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

  Widget buttonCustomOutline(String title) => GestureDetector(
        onTap: () {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext) {
                  return LoginPage();
                },
              ),
            );
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.width / 10,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue),
          ),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      );

  Widget InputData(String title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title,
        ),
      ),
    );
  }

  Widget ColumnText() => Row(
        children: [
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Registration Page",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1A1B2B),
                ),
              ),
              Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      );
}
