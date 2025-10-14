import 'package:flutter/material.dart';
import 'package:task_manager/core/constant.dart';

class craze_deal_card extends StatelessWidget {
  const craze_deal_card({
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
        height: screenHeight * 0.18,
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
                fit: BoxFit.cover,
                height: screenHeight * 0.18,
              ),
            ),

            // ✍️ Text content
            const Positioned(
              left: 16,
              top: 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Customer favourite \ntop supermarkets",
                    style: TextStyle(
                      color: kWhite,
                      wordSpacing: 7,
                      letterSpacing: 2,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Explore ",
                        style: TextStyle(color: kOrange, fontSize: 17),
                      ),
                      Icon(Icons.arrow_forward, color: kOrange),
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