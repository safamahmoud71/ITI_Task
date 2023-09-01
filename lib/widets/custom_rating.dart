import 'package:flutter/material.dart';
class CustomRating extends StatelessWidget {
  final double ratingScore;
  final int totalReviews ;
  final showReview;
  const CustomRating({super.key,
    required this.ratingScore,
    this.totalReviews =0 ,
    this.showReview= false,
  });

  @override
  Widget build(BuildContext context) {
    const size = 15.0 ;
    return Row(
      children: [
        for(int i =1 ; i<=5;i++)
          Container(
            margin: EdgeInsets.all(2),
            height: size,
            width: size,
            decoration: BoxDecoration(
                color: i<=ratingScore?Colors.yellow:Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.yellow,
                  width: 2,
                )
            ),
          ),
        const   SizedBox(width: 10,),
        Text('$ratingScore'),
      ],
    );
  }
}