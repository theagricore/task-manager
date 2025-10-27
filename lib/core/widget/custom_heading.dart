import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/core/constant.dart';

class HeadingSubheading extends StatelessWidget {
  final String heading;
  final String? subheading;

  const HeadingSubheading({
    super.key,
    required this.heading,
    this.subheading, // Optional
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        if (subheading != null && subheading!.isNotEmpty)
          Text(
            subheading!,
            style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: kGreen,
              ),
            ),
          ),
      ],
    );
  }
}
