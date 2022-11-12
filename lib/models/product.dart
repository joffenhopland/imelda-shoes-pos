import 'package:flutter/material.dart';

class ProductModel {
  //data Type
  int? id;
  String? category;
  String? description;
  String? image;
  double? price;
  // string? rating;
  String? title;

  // constructor
  ProductModel({
    required this.id,
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.title,
  });

  //method that assign values to respective datatype variables
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json["id"],
      category: json["category"],
      description: json["description"],
      image: json["image"],
      price: json["price"],
      title: json["title"],
    );

  }
}