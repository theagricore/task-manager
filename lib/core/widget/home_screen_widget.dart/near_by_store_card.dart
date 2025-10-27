import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

class NearbyStoreCard extends StatelessWidget {
  const NearbyStoreCard({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.18,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/Food.png',
            width: screenWidth * 0.20,
            height: screenHeight * 0.11,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 8,
              ), // Add right padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mithas Bhandar",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              "Sweets, North Indian",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Text(
                              "site No - 1 | 6.4 kms",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.14,
                              height: screenHeight * 0.02,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  'Top Store',
                                  style: GoogleFonts.quicksand(
                                    textStyle: const TextStyle(
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.18,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "★ 4.1",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17,
                                    color: Colors.black54),
                              ),
                            ),
                            Text(
                              "45 mins",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: kOrange),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Divider(thickness: 1, color: Colors.grey),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/percentage.png',
                            width: screenWidth * 0.04,
                            height: screenHeight * 0.02,
                          ),
                          SizedBox(width: screenWidth * 0.01),
                          Text(
                            "Upto 10% OFF",
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.quicksand(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: screenWidth * 0.03),
                      Flexible(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icons/grocerys.png',
                              width: screenWidth * 0.04,
                              height: screenHeight * 0.02,
                            ),
                            SizedBox(width: screenWidth * 0.01),
                            Text(
                              "3400+ items available",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
