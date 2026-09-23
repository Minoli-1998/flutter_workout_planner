import 'package:flutter/material.dart';

class FavoriteExerciseCard extends StatefulWidget {
  final String exerciseName;
  final String exerciseImage;
  final void Function() onRemoveFromFavorites;
  const FavoriteExerciseCard({
    super.key,
    required this.exerciseName,
    required this.exerciseImage,
    required this.onRemoveFromFavorites,
  });

  @override
  State<FavoriteExerciseCard> createState() => _FavoriteExerciseCardState();
}

class _FavoriteExerciseCardState extends State<FavoriteExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            widget.exerciseName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          SizedBox(height: 20),

          Image.asset(widget.exerciseImage, fit: BoxFit.cover, height: 75),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  widget.onRemoveFromFavorites();
                },
                icon: Icon(Icons.favorite, color: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}
