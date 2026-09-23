import 'package:flutter_workout_planner/models/equipment_model.dart';

class EquipmentData {
  final List<Equipment> equipmentData = [
    Equipment(
      id: 0,
      euipqmentName: "Dumbbell",
      equipmentDescription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
      equipmentUrl: "assets/images/equipments/dumbbell.png",
      noOfMinutes: 10,
      noOfCalories: 100.2,
      handOvered: false,
    ),

    Equipment(
      id: 1,
      euipqmentName: "Skipping Rope",
      equipmentDescription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
      equipmentUrl: "assets/images/equipments/skipping-rope.png",
      noOfMinutes: 10,
      noOfCalories: 120.5,
      handOvered: false,
    ),

    Equipment(
      id: 2,
      euipqmentName: "Treadmill",
      equipmentDescription: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
      equipmentUrl: "assets/images/equipments/treadmill.png",
      noOfMinutes: 15,
      noOfCalories: 150.8,
      handOvered: false,
    ),
  ];
}
