import 'package:flutter_workout_planner/models/equipment_model.dart';
import 'package:flutter_workout_planner/models/exercise_model.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String description;
  int totalExerciseCompleted = 0;
  int totalEquipmentsHandOvered = 0;

  final List<Exercise> exerciseList;
  final List<Equipment> equipmentList;

  final List<Exercise> favExerciseList;
  final List<Equipment> favEquipmentList;

  User({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.description,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });

  // methods
  // Add exercise to user's exercise list
  void addExercise(Exercise exercise) {
    exerciseList.add(exercise);
  }

  void removeExercise(Exercise exercise) {
    exerciseList.remove(exercise);
  }

  void addFavExercise(Exercise exercise) {
    favExerciseList.add(exercise);
  }

  void removeFavExercise(Exercise exercise) {
    favExerciseList.remove(exercise);
  }

  // add user equipment to user's equipment list
  void addEquipment(Equipment equipment) {
    equipmentList.add(equipment);
  }

  // remove user equipment from user's equipment list
  void removeEquipment(Equipment equipment) {
    equipmentList.remove(equipment);
  }

  void addFavEquipment(Equipment equipment) {
    favEquipmentList.add(equipment);
  }

  void removeFavEquipment(Equipment equipment) {
    favEquipmentList.remove(equipment);
  }
}
