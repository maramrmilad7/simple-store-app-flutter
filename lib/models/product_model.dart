import 'package:storeapplication/models/rating_model.dart';

class ProductModel {
  final String id;
  final String title;
  final String category;

  final String description;
  final double price;
  final String image;
  final RatingModel rating;

  ProductModel( 
      {required this.id,
      required this.title,
      required this.category,
      required this.description,
      required this.price,
      required this.image,
      required this.rating,
      });
  factory ProductModel.fromJson( json) {
    return ProductModel(
      id: json['id'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      title: json['title'],
      category: json['category'],
      rating: RatingModel.fromJson(json['rating']),
    );
  }
}

