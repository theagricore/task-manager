import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

class CrazeDealCard extends StatelessWidget {
  const CrazeDealCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Container(
        width: screenWidth,
        height: screenHeight * 0.20,
        decoration: BoxDecoration(
          color: kBlack,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            // 🖼 Background image
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: Image.asset(
                "assets/icons/vegitable_fly.png",
                fit: BoxFit.fitWidth,
                height: screenHeight * 0.18,
              ),
            ),

            // ✍️ Text content
            Positioned(
              left: 16,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer favourite \ntop supermarkets",
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: kWhite,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Explore ",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: kOrange,
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward, color: kOrange),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
