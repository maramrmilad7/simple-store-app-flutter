class RatingModel {
  final int count;
  final double rate;

  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromJson( json) {
    return RatingModel(
      count: json['count'],
      rate: json['rate'],
    );
  }
}
