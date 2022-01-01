import 'package:facebook/Sections/appbarbutton.dart';
import 'package:facebook/Sections/assetstrings.dart';
import 'package:facebook/Sections/storycard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storycard(
            storytext: 'Add to story',
            storyimage: sachin,
            storybuttonimage: sachin,
          ),
          storycard(
            storytext: 'sourav',
            storybuttonimage: sourav,
            storybutton: false,
            storyimage: dravid,
          ),
          storycard(
            storytext: 'dravid',
            storybuttonimage: dravid,
            storybutton: false,
            storyimage: sachin,
          ),
          storycard(
            storytext: 'Ganguly',
            storybuttonimage: sourav,
            storybutton: false,
            storyimage: sachin,
          ),

        ],
      ),
    );
  }
}
