import 'package:flutter/material.dart';

class CustomerModel {
  //data Type
  int? id;
  String? username;
  String? password;
  String? email;
  String? first_name;
  String? last_name;
  String? address;
  String? phone;
  String? created_at;
  String? modified_at;
  int? num_orders;

  // constructor
  CustomerModel({
    required this.id,
    required this.username,
    required this.password,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.address,
    required this.phone,
    required this.created_at,
    required this.modified_at,
    required this.num_orders,
  });

  //method that assign values to respective datatype variables
  factory CustomerModel.fromJson(Map<String, dynamic> json) {
    return CustomerModel(
      id: json["id"],
      username: json["username"],
      password: json["password"],
      email: json["email"],
      first_name: json["first_name"],
      last_name: json["last_name"],
      address: json["address"],
      phone: json["phone"],
      created_at: json["created_at"],
      modified_at: json["modified_at"],
      num_orders: json["num_orders"],
    );

  }
}