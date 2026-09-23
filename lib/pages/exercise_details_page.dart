import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/models/exercise_model.dart';
import 'package:flutter_workout_planner/widgets/reusable/activity_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/description_card.dart';
import 'package:intl/intl.dart';

class ExerciseDetailsPage extends StatefulWidget {
  final String exerciseTitle;
  final String exerciseDesription;
  final List<Exercise> exerciseList;
  const ExerciseDetailsPage({
    super.key,
    required this.exerciseTitle,
    required this.exerciseDesription,
    required this.exerciseList,
  });

  @override
  State<ExerciseDetailsPage> createState() => _ExerciseDetailsPageState();
}

class _ExerciseDetailsPageState extends State<ExerciseDetailsPage> {
  // date and time formatters
  final DateFormat dayMonthFormatter = DateFormat("EEEE, MMMM");
  final DateFormat dateFormatter = DateFormat("dd");

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDay = dayMonthFormatter.format(now);
    String formattedDate = dateFormatter.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$formattedDay $formattedDate",
              style: TextStyle(
                color: kMainSubColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              widget.exerciseTitle,
              style: TextStyle(
                color: kMainBlackColor,
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              DescriptionCard(description: widget.exerciseDesription),

              SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPadding,
                  mainAxisSpacing: kDefaultPadding,
                ),
                itemCount: widget.exerciseList.length,
                itemBuilder: (context, index) {
                  Exercise exercise = widget.exerciseList[index];
                  return ActivityCard(
                    title: exercise.exerciseName,
                    iconUrl: exercise.exersiceImageUrl,
                    description: "${exercise.noOfMinutes} mins of workout",
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
