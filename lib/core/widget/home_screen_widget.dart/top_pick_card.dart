import 'package:flutter/material.dart';
import 'package:task_manager/core/constant.dart';

class Top_pick_Card extends StatelessWidget {
  const Top_pick_Card({
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
      height: screenHeight * 0.20,
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Discount 25% All Fruits",
                    style: TextStyle(color: kWhite, fontSize: 22),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        "Check Now",
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