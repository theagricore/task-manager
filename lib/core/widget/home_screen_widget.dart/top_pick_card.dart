import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

class TopPickCard extends StatelessWidget {
  const TopPickCard({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          // LEFT SIDE
          Expanded(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align left
              children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "DISCOUNT 25% ALL FRUITS",
                    style: GoogleFonts.quicksand(
                textStyle:  const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                  color: kWhite
                ),
              ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11.0),
                  child: SizedBox(
                    width: screenWidth * 0.6,
                    height: screenHeight * 0.05,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kOrange,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                      child: const Text(
                        "CHECK NOW",
                        style: TextStyle(color: kWhite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
    
          // RIGHT SIDE
          Expanded(child: Image.asset('assets/icons/ice_cream.png')),
        ],
      ),
    );
  }
}