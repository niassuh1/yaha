import 'package:flutter/material.dart';
import 'package:yaha/entities/review.dart';
import 'package:yaha/widgets/star_badge.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({required this.review});

  final Review review;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 18,
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width / 1.75,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueAccent,
                backgroundImage: AssetImage(review.reviewerImage),
              ),
              SizedBox(
                width: 8,
              ),
              Text(review.reviewerName),
              Spacer(),
              StarBadge(rating: review.rating)
            ],
          ),
          SizedBox(height: 15),
          Text(
            review.descripiton,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
