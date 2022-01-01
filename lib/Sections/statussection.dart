//import 'package:facebook/Sections/assetstrings.dart';
import 'package:facebook/Sections/assetstrings.dart';
import 'package:facebook/Sections/onlinemembers.dart';
import 'package:flutter/material.dart';

class statussection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: OnlineMembers(
        member: sachin,
        status: false, displayborder: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on your mind?",
          enabledBorder: InputBorder.none,

        ),
      ),
    );
  }
}

