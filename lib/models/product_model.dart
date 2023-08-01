// import 'package:flutter/cupertino.dart';
// import 'package:flutter/rendering.dart';

import 'package:flutter/cupertino.dart';

class ProductModel {
  final dynamic id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.category,
      required this.description,
      required this.image,
      required this.price,
      required this.rating});

  factory ProductModel.fromjson(jsondata) {
    return ProductModel(
        id: jsondata["id"],
        title: jsondata['title'],
        category: jsondata['category'],
        description: jsondata['description'],
        image: jsondata['image'],
        price: jsondata['price'].toString(),
        rating: jsondata['rating'] == null
            ? null
            : RatingModel.jsondata(jsondata['rating']));
  }
}

class RatingModel {
  dynamic rate;
  int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.jsondata(data) {
    return RatingModel(rate: data['rate'], count: data['count']);
  }
}
