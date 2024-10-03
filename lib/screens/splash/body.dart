import 'package:aspen_apk/screens/explore/explore_screen.dart';
import 'package:aspen_apk/screens/splash/caption_one.dart';
import 'package:aspen_apk/screens/splash/caption_two.dart';
import 'package:aspen_apk/screens/splash/logo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 93, 23, 48),
        decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/images/hpip.avif'),
              fit: BoxFit.cover,
              opacity: 0.8,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Logo(),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: CaptionOne(),
                            ),
                            CaptionTwo(),
                          ],
                        ),
                      ),
                  ),
                  const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            const ExploreScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                              colors: [
                                const Color(0xFF34C759), // Hijau
                                  const Color(0xFFFFFFFF), // Putih
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),

                          child: Center(
                            child: Text(
                              'Explore',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                      ),
                    ),
                ],
              )
            ],
          ),
    );
  }
}