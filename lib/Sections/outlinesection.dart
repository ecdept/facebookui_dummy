import 'package:facebook/Sections/assetstrings.dart';
import 'package:facebook/Sections/onlinemembers.dart';
import 'package:flutter/material.dart';

class OutlineSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          OutlineButton.icon(
            onPressed: () {
              print('button clicked');
            },
            icon: Icon(
              Icons.video_call,
              color: Colors.blue,
            ),
            label: Text('   Create \nChatroom'),
            shape: StadiumBorder(),
          ),
          OnlineMembers(member: sachin, status: true, displayborder: false),
          OnlineMembers(member: sourav, status: true, displayborder: false),
          OnlineMembers(member: dravid, status: true, displayborder: false),
          OnlineMembers(member: sachin, status: true, displayborder: false),
          OnlineMembers(member: sourav, status: true, displayborder: false),
          OnlineMembers(member: dravid, status: true, displayborder: false),
          OnlineMembers(member: sachin, status: true, displayborder: false),
          OnlineMembers(member: sourav, status: true, displayborder: false),
          OnlineMembers(member: dravid, status: true, displayborder: false),
        ],
      ),
    );
  }
}
