import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.10,
      decoration: const BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Refer & Earn",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Invite your friends & earn 15% off",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: kWhite,
                          letterSpacing: 0,
                          wordSpacing: 0,
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    const Icon(
                      Icons.arrow_circle_right,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset(
              'assets/icons/Gift.png',
              width: 73,
              height: 73,
            ),
          ],
        ),
      ),
    );
  }
}
