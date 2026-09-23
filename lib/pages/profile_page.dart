import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/data/user_data.dart';
import 'package:flutter_workout_planner/widgets/home_page/progress_card.dart';
import 'package:flutter_workout_planner/widgets/profile_page/added_exercise_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/heading_text.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final DateFormat formatter = DateFormat("EEEE, MMMM");
  final DateFormat dayFormat = DateFormat("dd");

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormat.format(now);
    String userName = user.fullName;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$formattedDate $formattedDay",
                style: TextStyle(
                  color: kMainSubColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),

              Text(
                "Hello, $userName",
                style: TextStyle(
                  color: kMainBlackColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 30),

              ProgressCard(progressValue: 0.08, total: 100),

              SizedBox(height: 20),

              HeadingText(title: "Your Exercies"),

              SizedBox(height: 20),

              // List of added exercises
              Column(
                children: user.exerciseList.map((exercise) {
                  return AddedExerciseCard(
                    yourExerciseName: exercise.exerciseName,
                    yourExerciseImageUrl: exercise.exersiceImageUrl,
                    buttonText: 'Mark as Done',
                  );
                }).toList(),
              ),

              SizedBox(height: 20),

              HeadingText(title: "Your Equipments"),

              SizedBox(height: 20),

              // List of added exercises
              Column(
                children: user.equipmentList.map((equipment) {
                  return AddedExerciseCard(
                    yourExerciseName: equipment.euipqmentName,
                    yourExerciseImageUrl: equipment.equipmentUrl,
                    buttonText: 'Mark as Handovered',
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
