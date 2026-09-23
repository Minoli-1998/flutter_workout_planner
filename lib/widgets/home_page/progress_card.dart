import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;
  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [kMainBlueColor, kMainDarkBlueColor],
          begin: AlignmentGeometry.topLeft,
          end: AlignmentGeometry.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 250,
            child: Text(
              "Proteins, Fats & Carbohydrates",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$done days",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),

              Text(
                "${100 - done} days left",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(117, 255, 255, 255),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          LinearProgressIndicator(
            value: widget.progressValue,
            backgroundColor: kMainDarkBlueColor,
            valueColor: AlwaysStoppedAnimation(Colors.white),
            minHeight: 10,
            borderRadius: BorderRadius.circular(100),
          ),
        ],
      ),
    );
  }
}
