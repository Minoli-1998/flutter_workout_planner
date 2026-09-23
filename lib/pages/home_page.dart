import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/data/equipment_data.dart';
import 'package:flutter_workout_planner/data/exercise_data.dart';
import 'package:flutter_workout_planner/data/user_data.dart';
import 'package:flutter_workout_planner/pages/equipment_details_page.dart';
import 'package:flutter_workout_planner/pages/exercise_details_page.dart';
import 'package:flutter_workout_planner/widgets/home_page/progress_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/activity_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/heading_text.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateFormat formatter = DateFormat("EEEE, MMMM");
  final DateFormat dayFormat = DateFormat("dd");
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormat.format(now);
    String userName = user.fullName;

    final exerciseList = ExerciseData().exerciseList;
    final equipmentList = EquipmentData().equipmentData;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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

                HeadingText(title: "Today's Activity"),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: ActivityCard(
                        title: "Warmup",
                        iconUrl: "assets/images/exercises/cobra.png",
                        description: 'see more...',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Warmups",
                              exerciseDesription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentDetailsPage(
                              title: "Equipments",
                              description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                      child: ActivityCard(
                        title: "Equipment",
                        iconUrl: "assets/images/equipments/treadmill.png",
                        description: 'see more...',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Exercise",
                              exerciseDesription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ActivityCard(
                        title: "Exercise",
                        iconUrl: "assets/images/exercises/dragging.png",
                        description: 'see more...',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Streching",
                              exerciseDesription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                              exerciseList: exerciseList,
                            ),
                          ),
                        );
                      },
                      child: ActivityCard(
                        title: "Streching",
                        iconUrl: "assets/images/exercises/yoga.png",
                        description: 'see more...',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
