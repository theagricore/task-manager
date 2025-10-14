import 'package:flutter/material.dart';
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
                            const Text(
                              "Mithas Bhandar",
                              style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            const Text(
                              "Sweets, North Indian",
                              style: TextStyle(
                                fontSize: 15,
                                color: kGrey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const Text(
                              "site No - 1 | 6.4 kms",
                              style: TextStyle(
                                fontSize: 13,
                                color: kGrey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Container(
                              width: screenWidth * 0.14,
                              height: screenHeight * 0.02,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Center(
                                child: Text(
                                  'Top Store',
                                  style: TextStyle(fontSize: 9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.18,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "★ 4.1",
                              style: TextStyle(color: kGrey, fontSize: 17),
                            ),
                            Text(
                              "45 mins",
                              style: TextStyle(color: kOrange, fontSize: 18),
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
                          const Text(
                            "Upto 10% OFF",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
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
                            const Text(
                              "3400+ items available",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
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