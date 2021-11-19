class Review {
  final String reviewerName;
  final double rating;
  final String descripiton;
  final String reviewerImage;
  const Review(
      {required this.reviewerName,
      required this.rating,
      required this.descripiton,
      required this.reviewerImage});
}

List<Review> reviews = [
  Review(
    reviewerName: 'Ali',
    rating: 5.0,
    descripiton: 'Very neat and proffesional',
    reviewerImage: 'assets/images/avatar1.jpg',
  ),
  Review(
      reviewerName: 'Fatima',
      rating: 5.0,
      descripiton: 'Thanks to this doctor I no longer have back problems',
      reviewerImage: 'assets/images/avatar2.jpg'),
  Review(
      reviewerName: 'Yousef',
      rating: 4.5,
      descripiton: 'Excellent and experienced doctor',
      reviewerImage: 'assets/images/avatar3.jpg'),
  Review(
      reviewerName: 'Aya',
      rating: 4.5,
      descripiton: 'Would recommend again!',
      reviewerImage: 'assets/images/avatar4.jpg'),
];
