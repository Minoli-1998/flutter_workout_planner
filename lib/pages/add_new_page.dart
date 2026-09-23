import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/data/exercise_data.dart';
import 'package:flutter_workout_planner/data/user_data.dart';
import 'package:flutter_workout_planner/models/exercise_model.dart';
import 'package:flutter_workout_planner/widgets/reusable/exercise_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/heading_text.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final userData = user;
  final exersiceList = ExerciseData().exerciseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, ${userData.fullName}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Lets Add Some Workouts and Equipment for today!",
                style: TextStyle(
                  fontSize: 16,
                  color: kMainBlueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 5),

              HeadingText(title: "All Exercises"),

              SizedBox(height: 10),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: exersiceList.length,
                  itemBuilder: (context, index) {
                    Exercise exercise = exersiceList[index];
                    return ExerciseCard(
                      title: exercise.exerciseName,
                      imagePath: exercise.exersiceImageUrl,
                      toggleAddExercise: () {
                        // Handle add exercise logic here
                        setState(() {
                          if (userData.exerciseList.contains(exercise)) {
                            userData.removeExercise(exercise);
                          } else {
                            userData.addExercise(exercise);
                          }
                        });
                      }, 
                      isAdded: userData.exerciseList.contains(exercise), 
                      toggleAddToFav: () {
                        // Handle add to favorite logic here
                        setState(() {
                          if (userData.favExerciseList.contains(exercise)) {
                            userData.removeFavExercise(exercise);
                          } else {
                            userData.addFavExercise(exercise);
                          }
                        });
                      },
                      isFav: userData.favExerciseList.contains(exercise),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
