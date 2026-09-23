import 'package:flutter_workout_planner/models/equipment_model.dart';
import 'package:flutter_workout_planner/models/exercise_model.dart';
import 'package:flutter_workout_planner/models/user_model.dart';

User user = User(
  userId: "1234",
  fullName: "John Doe",
  gender: "Male",
  address: "12, Main Street, Country",
  age: 25,
  description: "Fitness enthusiast",
  exerciseList: [
    Exercise(
      id: 0,
      exerciseName: "Push-Ups",
      exersiceImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinutes: 5,
      completed: false,
    ),

    Exercise(
      id: 1,
      exerciseName: "Squats",
      exersiceImageUrl: "assets/images/exercises/dragging.png",
      noOfMinutes: 10,
      completed: false,
    ),
  ],
  equipmentList: [
    Equipment(
      id: 0,
      euipqmentName: "Dumbbell",
      equipmentDescription:
          "A pair of dumbbells for strength training exercises.",
      equipmentUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 10,
      noOfCalories: 100.2,
      handOvered: false,
    ),

    Equipment(
      id: 1,
      euipqmentName: "Skipping Rope",
      equipmentDescription: "",
      equipmentUrl: "assets/images/equipments/skipping-rope.png",
      noOfMinutes: 10,
      noOfCalories: 120.5,
      handOvered: false,
    ),
  ],
  favExerciseList: [],
  favEquipmentList: [],
);
