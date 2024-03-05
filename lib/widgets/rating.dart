import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final double rating;
  final double starSize;
  final Color starColor;
  final Color unselectedStarColor;
  final double fontsize;

  StarRating({
    required this.rating,
    this.starSize = 20,
    this.fontsize=12,
    this.starColor = Colors.orange,
    this.unselectedStarColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            rating <= 1 ? Icons.star : Icons.star_half,
            size: starSize,
            color: starColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(rating.toString(),
              style: TextStyle(fontSize: fontsize, color: Colors.black87))
        ],
      ),
    );
  }
}
