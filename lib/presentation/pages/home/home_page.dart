import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';
import 'package:task_manager/core/widget/home_screen_widget.dart/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.location_on, color: kGreen, size: 24),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                "ABCD, New Delhi",
                style: GoogleFonts.quicksand(
                    textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                )),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Icon(Icons.expand_more, color: kGreen, size: 24),
          ],
        ),
      ),
      body: HomeBody(screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
