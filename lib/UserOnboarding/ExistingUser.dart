//Login Screens
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sdfinal/UserOnboarding/NewUser.dart';
import 'package:sdfinal/global.dart';
import '../Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ExLoginPage extends StatefulWidget {
  const ExLoginPage({super.key});

  @override
  State<ExLoginPage> createState() => _ExLoginPageState();
}

class _ExLoginPageState extends State<ExLoginPage> {
  TextEditingController userName = TextEditingController();

  TextEditingController passWord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> signIn() async {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userName.text, password: passWord.text);
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/SDBackground.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome Back \nto SafeDrive',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: bgWhite,
                    )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Sign in with your credentials.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      fontSize: 18,
                      color: bgWhite,
                    )),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 25),
                            //Input Text Field Container
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Username (Email Address)',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              )),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: userName,
                                      decoration: InputDecoration(
                                        hintText: "Ex: johndoe@safedrive.com",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Password',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: backgroundPrimary,
                              )),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: bgWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: backgroundAccentOne,
                                        blurRadius: 20,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextField(
                                      controller: passWord,
                                      decoration: InputDecoration(
                                        hintText: "Ex: *******",
                                        hintStyle: GoogleFonts.poppins(
                                          textStyle: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NewUserPage()));
                              },
                              child: Center(
                                  child: Text(
                                "New to SafeDrive? Sign up here.",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: backgroundPrimary,
                                  ),
                                ),
                              )),
                            ),

                            const SizedBox(
                              height: 25,
                            ),

                            GestureDetector(
                              onTap: () {
                                signIn();
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              },
                              child: Center(
                                child: Container(
                                  height: 53,
                                  width: 320,
                                  decoration: BoxDecoration(
                                      color: contrastAccentOne,
                                      borderRadius: BorderRadius.circular(30),
                                      border:
                                          Border.all(color: contrastAccentOne),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: backgroundAccentOne,
                                            blurRadius: 5,
                                            offset: Offset(0, 10))
                                      ]),
                                  child: Center(
                                    child: Text(
                                      '> LOG IN >',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: bgWhite,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ]),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
