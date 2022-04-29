import 'package:flutter/material.dart';

class Item{
  final String name;
  final String imagePAth;
   int? discountPercent;
  final double originalPrice;
  final double rating;

  Item({
    required this.name,
    required this.imagePAth,
    required this.originalPrice,
    required this.rating,
    this.discountPercent
  });

  double get price {
    return discountPercent != null ?
        ((originalPrice)-(originalPrice * discountPercent! /100))
        : originalPrice;
  }

  static String format(double price){
    String money = price.toStringAsFixed(2);
    return '\$$money';
  }
}