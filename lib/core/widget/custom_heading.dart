import 'package:flutter/material.dart';
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
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        if (subheading != null && subheading!.isNotEmpty)
          Text(subheading!, style: const TextStyle(fontSize: 18, color: kGreen)),
      ],
    );
  }
}