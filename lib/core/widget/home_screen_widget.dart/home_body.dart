import 'package:flutter/material.dart';
import 'package:task_manager/core/constant.dart';
import 'package:task_manager/core/widget/custom_heading.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/category_bar.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/craze_deal_card.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/near_by_store_card.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/refer_and_earn_card.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/search_bar.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/top_pick_card.dart';

import 'trending_card.dart';

// ignore: camel_case_types
class Home_body extends StatelessWidget {
  const Home_body({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Search Bar
            SeatchBar(screenWidth: screenWidth),
            SizedBox(height: screenHeight * 0.05),
            const Text(
              "What would you like to day today?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01),
            //Category Bar
            const CategoryBar1(),
            SizedBox(height: screenHeight * 0.02),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("More", style: TextStyle(color: kGreen, fontSize: 23)),
                Icon(Icons.expand_more, color: kGreen, size: 26),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            const HeadingSubheading(heading: "Top Pick for you"),
            SizedBox(height: screenHeight * 0.02),
            //Top Pick Card
            Top_pick_Card(screenHeight: screenHeight, screenWidth: screenWidth),
            const HeadingSubheading(heading: "Trending", subheading: "See all"),
            //Trending Card
            SizedBox(
              height: screenHeight * 0.15,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.65,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.15,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.65,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            const HeadingSubheading(heading: "Craze deals"),
            //Craze deal Card
            SizedBox(
              height: screenHeight * 0.24,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.99,
                    height: screenHeight * 0.18,
                    child: craze_deal_card(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            //Refer and Earn Card
            Refer_Earn(screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.02),
            const HeadingSubheading(heading: "Nearby stores", subheading: "See all"),
            SizedBox(height: screenHeight * 0.02),
            //Near By Store Card
            NearbyStoreCard(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            NearbyStoreCard(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              width: screenWidth * 0.6,
              height: screenHeight * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kGreen,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: const Text(
                  "View all stores",
                  style: TextStyle(color: kWhite, fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}