import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';
import 'package:flutter_workout_planner/constants/responsive.dart';
import 'package:flutter_workout_planner/widgets/reusable/description_card.dart';

class EquipmentCard extends StatelessWidget {
  final String equipmentName;
  final String imageUrl;
  final int workoutMin;
  final double burnedCaloryValue;
  final String equipmentDescription;

  const EquipmentCard({
    super.key,
    required this.equipmentName,
    required this.imageUrl,
    required this.workoutMin,
    required this.burnedCaloryValue,
    required this.equipmentDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Color(0xffF5F5F5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                equipmentName,
                style: TextStyle(
                  color: kMainBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
        
              SizedBox(height: 20),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(imageUrl, fit: BoxFit.cover),
        
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$workoutMin mins of workout",
                        style: TextStyle(
                          color: kMainBlueColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
        
                      Text(
                        "$burnedCaloryValue Calories will burn",
                        style: TextStyle(
                          color: kMainBlueColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        
              SizedBox(height: 20),
        
              DescriptionCard(description: equipmentDescription),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
