import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 15.0);

    return Scaffold(
      body: ListView(
        children: <Widget>[
          ClipPath(
            child: Container(
              height: 350.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('images/bg_top1.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 130.0, left: 25.0),
                child: Text(
                  "Travel \nWallet App",
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            clipper: MyClipper(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 5.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "MOBILE NUMBER",
                style: textStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                style: textStyle),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 5.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "PASSWORD",
                style: textStyle,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
              autofocus: false,
              decoration: InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.yellow,
                  )),
              style: textStyle,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.black87, fontSize: 35.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: CircleAvatar(
                  backgroundColor: Color(0xFFBCC722),
                  radius: 40.0,
                  child: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                    size: 45.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 45.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Text(
                  "Create account",
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600),
                  )),
            ],
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 90);

    var firstEndPoint = Offset(size.width / 2, size.height - 50);
    var firstControlPoint = Offset(size.width / 3, size.height - 90);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondEndPoint = Offset(size.width, size.height - 40);
    var secondControlPoint = Offset((size.width / 2) + 98, size.height);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 1);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
