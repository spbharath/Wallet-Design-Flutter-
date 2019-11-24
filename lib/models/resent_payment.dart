import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResentPayment {
  final Icon icon;
  final String amount;
  final String payee;

  ResentPayment({this.icon, this.amount, this.payee});
}

List<ResentPayment> resentPayment = [
  ResentPayment(
      icon: Icon(
        Icons.hotel,
        color: Colors.white70,
      ),
      amount: "\$100",
      payee: "Hotel"),
  ResentPayment(
      icon: Icon(
        Icons.fastfood,
        color: Colors.white70,
      ),
      amount: "\$15",
      payee: "Food"),
  ResentPayment(
      icon: Icon(
        Icons.attach_money,
        color: Colors.white70,
      ),
      amount: "\$50",
      payee: "Sam"),
  ResentPayment(
      icon: Icon(
        Icons.phone,
        color: Colors.white70,
      ),
      amount: "\$5",
      payee: "Top-Up"),
  ResentPayment(
      icon: Icon(
        Icons.restaurant,
        color: Colors.white70,
      ),
      amount: "\$150",
      payee: "Restaurant"),
  ResentPayment(
      icon: Icon(
        Icons.hotel,
        color: Colors.white70,
      ),
      amount: "\$200",
      payee: "Hotel"),
];
