import 'package:facebook/Sections/appbarbutton.dart';
import 'package:facebook/Sections/assetstrings.dart';
import 'package:facebook/Sections/onlinemembers.dart';
import 'package:flutter/material.dart';

class storycard extends StatelessWidget {
  bool storybutton;
  String storytext;
  String storyimage;
  String storybuttonimage;
  storycard({
    this.storybutton = true,
    required this.storytext,
    required this.storyimage,
    required this.storybuttonimage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 10, right: 5),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(storyimage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
              left: 2,
              top: 2,
              child: storybutton
                  ? appBarButton(
                      myicon: Icons.add,
                      buttonaction: () {
                        print("add button pressed");
                      },
                    )
                  : OnlineMembers(
                      member: storybuttonimage,
                      status: false,
                      displayborder: true,
                      ht: 35,
                      wd: 35,
                    )),
          Positioned(
            bottom: 4,
            left: 8,
            child: Text(
              storytext,
              style: TextStyle(color: Colors.yellow, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
