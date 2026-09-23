import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class AddEquipmentCard extends StatefulWidget {
  final String equipmentName;
  final String equipmentImage;
  final int noOfMins;
  final double caloriesBurnt;
  final bool isAdded;
  final bool isFav;
  final void Function() toggleAddEquipment;
  final void Function() toggleAddToFav;
  const AddEquipmentCard({
    super.key,
    required this.equipmentName,
    required this.equipmentImage,
    required this.noOfMins,
    required this.caloriesBurnt,
    required this.toggleAddEquipment,
    required this.isAdded,
    required this.isFav,
    required this.toggleAddToFav,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.equipmentName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(widget.equipmentImage, fit: BoxFit.cover, width: 50),
              SizedBox(width: 100),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.noOfMins} mins of Workout",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kMainBlueColor,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "${widget.caloriesBurnt} Calories will burn",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kMainBlueColor,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: widget.toggleAddEquipment,
                        icon: Icon(
                          widget.isAdded ? Icons.remove : Icons.add,
                          color: kMainBlueColor,
                        ),
                      ),
                      SizedBox(width: 100),
                      IconButton(
                        onPressed: widget.toggleAddToFav,
                        icon: Icon(
                          Icons.favorite,
                          color: widget.isFav ? kMainRedColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
