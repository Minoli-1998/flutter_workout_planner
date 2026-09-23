import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class DescriptionCard extends StatelessWidget {
  final String description;
  const DescriptionCard({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          description,
          style: TextStyle(
            color: kMainSubColor,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
