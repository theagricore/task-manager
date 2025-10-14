import 'package:flutter/material.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/category_card.dart';

class CategoryBar1 extends StatelessWidget {
  const CategoryBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download.png",
                title: "Food Delivery",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (1).png",
                title: "Medicines",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (2).png",
                title: "Pet Supplies",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (3).png",
                title: "Meat",
              ),
            ),
          ],
        ),
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (4).png",
                title: "Meat",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (5).png",
                title: "Cosmetic",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                imagePath: "assets/icons/download (6).png",
                title: "Stationery",
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: CategoryCard(
                discountText: "10% off",
                imagePath: "assets/icons/download (7).png",
                title: "Stores",
              ),
            ),
          ],
        ),
      ],
    );
  }
}