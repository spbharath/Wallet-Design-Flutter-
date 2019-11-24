import 'dart:ui';
import 'package:flutter/material.dart';

class Offers {
  final String categorey;
  final String offer;
  final List<Color> color;

  Offers({this.offer, this.categorey, this.color});
}

List<Offers> offersDetail = [
  Offers(
      offer: "50%",
      categorey: "Hotels",
      color: [Color(0xFFE1BB54), Color(0xFFD89D01)]),
  Offers(
      offer: "10%",
      categorey: "Restaurent",
      color: [Color(0xFFE2C657), Color(0xFF92952B)]),
  Offers(
      offer: "20%",
      categorey: "Trains",
      color: [Color(0xFFE1BB54), Color(0xFFD89D01)]),
];
