import 'package:flutter/material.dart';
import 'package:task_manager/core/constant.dart';

// ignore: camel_case_types
class Refer_Earn extends StatelessWidget {
  const Refer_Earn({
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
                const Text(
                  "Refer & Earn",
                  style: TextStyle(color: kWhite, fontSize: 22),
                ),
                Row(
                  children: [
                    const Text(
                      "Invite your friends & earn 15% off",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
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
