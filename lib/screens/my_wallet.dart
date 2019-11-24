import 'package:flutter/material.dart';
import 'package:first_design/models/friends.dart';
import 'package:first_design/models/resent_payment.dart';
import 'package:first_design/models/offers.dart';
import 'package:dashed_container/dashed_container.dart';

class MyWallet extends StatefulWidget {
  @override
  _MyWalletState createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                child: Icon(
                  Icons.apps,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 30.0),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Image.network(
                    "https://i.ya-webdesign.com/images/vector-avatars-circle-13.png",
                    fit: BoxFit.cover,
                  ),
                  radius: 30.0,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 25.0),
            child: Text(
              "My Wallet",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFEAAB00)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 25.0),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: "\$",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF243709)),
                ),
                TextSpan(
                  text: "1,800",
                  style: TextStyle(
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF243709)),
                )
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                child: Text(
                  "Wallet Share",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 30.0),
                child: Text("see all",
                    style: TextStyle(
                        fontSize: 15.0, decoration: TextDecoration.underline)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 5.0),
            height: 120.0,
            child: ListView.builder(
              itemCount: friendsData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(2.0),
                  margin: EdgeInsets.only(left: 10.0),
                  width: 100.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        width: 90.0,
                        padding: EdgeInsets.all(5.0),
                        child: index == 0
                            ? DashedContainer(
                                dashColor: Colors.grey,
                                dashedLength: 20.0,
                                borderRadius: 35.0,
                                boxShape: BoxShape.rectangle,
                                blankLength: 8.0,
                                strokeWidth: 2.0,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                              )
                            : Image(
                                image: ExactAssetImage(
                                    friendsData[index].avatarUrl),
                                fit: BoxFit.fitWidth,
                              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: index == 0
                            ? Text(
                                "Add",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              )
                            : Text(
                                friendsData[index].name,
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                child: Text(
                  "Resent Payment",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 30.0),
                child: Text("see all",
                    style: TextStyle(
                        fontSize: 15.0, decoration: TextDecoration.underline)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            height: 130.0,
            child: ListView.builder(
              itemCount: friendsData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(2.0),
                  margin: EdgeInsets.only(left: 10.0),
                  width: 80.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                          height: 90.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF808226),
                              borderRadius: BorderRadius.circular(25.0)),
                          width: 70.0,
                          padding: EdgeInsets.all(5.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              resentPayment[index].icon,
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Text(
                                  resentPayment[index].amount,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: Text(
                          resentPayment[index].payee,
                          style: TextStyle(
                              fontSize: 13.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                child: Text(
                  "Resent Payment",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0, right: 30.0),
                child: Text("see all",
                    style: TextStyle(
                        fontSize: 15.0, decoration: TextDecoration.underline)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 10.0),
            height: 120.0,
            child: ListView.builder(
              itemCount: offersDetail.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.only(left: 10.0),
                  width: 150.0,
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 200.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                              color: Color(0xFF808226),
                              borderRadius: BorderRadius.circular(25.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: offersDetail[index].color)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                offersDetail[index].offer,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                offersDetail[index].categorey,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
            decoration: BoxDecoration(
                color: Color(0xFF253809),
                borderRadius: BorderRadius.circular(55.0)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Wallet",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        width: 65.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                            color: Color(0xFF4B5B34),
                            borderRadius: BorderRadius.circular(65.0)),
                      ),
                      Container(
                        height: 55.0,
                        width: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55.0),
                          color: Color(0xFF8F922A),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image(
                            image: AssetImage('images/qr1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Offer",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
