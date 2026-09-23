import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class ExerciseCard extends StatefulWidget {
  final String title;
  final String imagePath;
  const ExerciseCard({super.key, required this.title, required this.imagePath});

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          Image.asset(
            widget.imagePath,
            fit: BoxFit.cover,
            height: 75,
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kMainBlueColor,
                ),
                child: Icon(Icons.add, color: Colors.white, size: 20),
              ),

              Icon(Icons.favorite, color: kMainRedColor, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
