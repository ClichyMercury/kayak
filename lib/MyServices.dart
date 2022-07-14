// @dart=2.9
import 'dart:convert';

import 'package:flutter/material.dart';

class MyService {
  static final MyService _instance = MyService._internal();

  // passes the instantiation to the _instance object
  factory MyService() => _instance;

  //initialize variables in here
  MyService._internal() {
    List hotelList2 = [];
    List hotelList3 = [];
  }

  List hotelList2 = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel_1.png',
      'price': '180',
    },
    {
      'title': 'Queen Hotel',
      'place': 'wembley, London',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel_2.png',
      'price': '220',
    },
    {
      'title': 'Grand Mal Hotel',
      'place': 'wembley, London',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel_3.png',
      'price': '400',
    },
    {
      'title': 'Hilton',
      'place': 'wembley, London',
      'distance': 11,
      'review': 34,
      'picture': 'images/hotel_4.png',
      'price': '910',
    },
  ];

  List hotelList3 = [];
  //short getter for my variable

  List get myMap => hotelList2;
  List get myMap2 => hotelList3;

  //short setter for my variable
  // set setMyVariable(Pages value) => pages = value;

  void setMonMontant(List code) {
    this.hotelList2 = code as List;
  }

  void setMonMontant2(List code) {
    this.hotelList3 = code as List;
  }
}
