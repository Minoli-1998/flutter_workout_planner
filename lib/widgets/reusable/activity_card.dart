import 'package:flutter/material.dart';
import 'package:flutter_workout_planner/constants/colors.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String iconUrl;
  final String description;
  const ActivityCard({
    super.key,
    required this.title,
    required this.iconUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * 0.46,
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kMainBlackColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Image.asset(iconUrl, fit: BoxFit.cover, height: 75,),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(
              color: kMainBlueColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
