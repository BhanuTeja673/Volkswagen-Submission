import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './global.dart';
import 'NavBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(''),
            fit: BoxFit.cover,
          )),
        ),
        Scaffold(
          bottomNavigationBar: const NavBar(
            initialIndex: 0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Dashboard',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: bgWhite,
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.yellow,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Journey Statistics',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: backgroundPrimary,
                            )),
                          ),
                          const Divider(
                            thickness: 2.5,
                            color: backgroundPrimary,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'Abrupt Braking:',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                              ),
                              children: const <Widget>[
                                ListTile(
                                    title: Text(
                                  "Detailed Statistics Overview",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'Average Speed: 80kmph',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                              ),
                              children: const <Widget>[
                                ListTile(
                                    title: Text(
                                  "Detailed Statistics Overview",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: width * 0.80,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                'Mean Journey Length:',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                              ),
                              children: const <Widget>[
                                ListTile(
                                    title: Text(
                                  "Detailed Statistics Overview",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
