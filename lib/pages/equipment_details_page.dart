import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/models/equipment_model.dart';
import 'package:flutter_workout_planner/widgets/reusable/description_card.dart';
import 'package:flutter_workout_planner/widgets/reusable/equipment_card.dart';
import 'package:intl/intl.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String title;
  final String description;
  final List<Equipment> equipmentList;

  const EquipmentDetailsPage({
    super.key,
    required this.title,
    required this.description,
    required this.equipmentList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  final DateFormat dayFormat = DateFormat("EEEE, MMMM");
  final DateFormat dateFormat = DateFormat("dd");

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String day = dayFormat.format(now);
    String date = dateFormat.format(now);

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$day $date",
                style: TextStyle(
                  color: kMainSubColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: kMainBlackColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              DescriptionCard(description: widget.description),

              SizedBox(height: 20),

              Column(
                children: [
                  for (int i = 0; i < widget.equipmentList.length; i++)
                    EquipmentCard(
                      equipmentName: widget.equipmentList[i].euipqmentName,
                      imageUrl: widget.equipmentList[i].equipmentUrl,
                      workoutMin: widget.equipmentList[i].noOfMinutes,
                      burnedCaloryValue: widget.equipmentList[i].noOfCalories,
                      equipmentDescription:
                          widget.equipmentList[i].equipmentDescription,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
