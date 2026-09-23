import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/data/user_data.dart';
import 'package:flutter_workout_planner/models/exercise_model.dart';
import 'package:flutter_workout_planner/models/user_model.dart';
import 'package:flutter_workout_planner/widgets/reusable/favorite_exercise_card.dart';
import 'package:intl/intl.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final DateFormat dayMonthformatter = DateFormat('EEEE, MMMM');
  final DateFormat dateformatter = DateFormat('dd');
  final User userData = user;

  final List<Exercise> favExerciseList = user.favExerciseList;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDayMonth = dayMonthformatter.format(now);
    String formattedDate = dateformatter.format(now);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$formattedDayMonth $formattedDate",
                style: TextStyle(
                  color: kMainSubColor,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),

              SizedBox(height: 5),

              Row(
                children: [
                  Text(
                    "Hello, ${userData.fullName}",
                    style: TextStyle(
                      color: kMainBlackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.favorite, color: kMainRedColor, size: 30),
                ],
              ),

              Text(
                "Here are all your favorited Workouts",
                style: TextStyle(
                  fontSize: 16,
                  color: kMainBlueColor,
                  fontWeight: FontWeight.w500,
                ),
              ),

              SizedBox(height: 15),

              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: userData.favExerciseList.length,
                itemBuilder: (context, index) {
                  Exercise exercise = userData.favExerciseList[index];
                  return FavoriteExerciseCard(
                    exerciseName: exercise.exerciseName,
                    exerciseImage: exercise.exersiceImageUrl, 
                    onRemoveFromFavorites: () {
                      setState(() {
                        userData.removeFavExercise(exercise);
                      });
                    },
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
