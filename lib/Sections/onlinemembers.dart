import 'package:flutter/material.dart';
import 'assetstrings.dart';

class OnlineMembers extends StatelessWidget {
  String member;
  bool status;
  bool displayborder;
  double ht;
  double wd;

  OnlineMembers(
      {required this.member,
      required this.status,
      required this.displayborder,
      this.ht = 50,
      this.wd = 50});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              //color: Colors.blue,

              border: displayborder
                  ? Border.all(width: 2, color: Colors.blue)
                  : null),
          height: ht,
          width: wd,
          margin: EdgeInsets.only(left: 2, right: 2),
          //padding: EdgeInsets.only(left: 3, right: 3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(member),
          ),
        ),
        status == true
            ? Positioned(
                right: 2,
                bottom: 4,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
