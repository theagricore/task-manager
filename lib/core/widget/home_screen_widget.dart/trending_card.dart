import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

// ignore: camel_case_types
class TrendingCard extends StatelessWidget {
  const TrendingCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.55, // Reduced width
      height: screenHeight * 0.08, // Reduced height
      child: Row(
        children: [
          // Smaller image with fixed dimensions
          Container(
            width: screenWidth * 0.20,
            height: screenHeight * 0.12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/icons/Ice_cream2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 6),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 2.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mithas Bhandar",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 19,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Sweets, North Indian",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: kGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "(store location) | 6.4km",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: kGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "★ 4.1 | 45 mins",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: kGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
