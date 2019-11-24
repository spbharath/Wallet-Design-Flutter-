import 'package:first_design/screens/login_screen.dart';
import 'package:first_design/screens/my_wallet.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First Design",
      theme: ThemeData(primaryColor: Colors.grey, fontFamily: "Open Sans"),
      home: Login(), // Use MyWallet() instead of Login() to view Wallet page
    );
  }
}
