import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class AddedExerciseCard extends StatefulWidget {
  final String yourExerciseName;
  final String yourExerciseImageUrl;
  final String buttonText;
  final void Function() onButtonPressed;
  const AddedExerciseCard({
    super.key,
    required this.yourExerciseName,
    required this.yourExerciseImageUrl,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  State<AddedExerciseCard> createState() => _AddedExerciseCardState();
}

class _AddedExerciseCardState extends State<AddedExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 150,
            child: Text(
              widget.yourExerciseName,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            widget.yourExerciseImageUrl,
            width: 50,
            fit: BoxFit.cover,
          ),
          Container(
            width: 3,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(1.5),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle button press
              widget.onButtonPressed();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: kMainBlueColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Text(
              widget.buttonText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
