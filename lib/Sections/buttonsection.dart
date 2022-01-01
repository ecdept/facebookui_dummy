import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  Widget NewWidget({
    required IconData buttonicon,
    required Color buttoncolor,
    required String buttonname,
    required void Function() buttonaction,
  }) {
    return FlatButton.icon(
        onPressed: buttonaction,
        icon: Icon(
          buttonicon,
          color: buttoncolor,
        ),
        label: Text(buttonname));
  }

  Widget verticaldivider = VerticalDivider(
    thickness: 2,
    color: Colors.grey[300],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NewWidget(
            buttonaction: () {
              print("live pressed");
            },
            buttoncolor: Colors.red,
            buttonicon: Icons.live_tv,
            buttonname: 'live',
          ),
          verticaldivider,
          NewWidget(
            buttonaction: () {
              print("Video call pressed");
            },
            buttoncolor: Colors.orange,
            buttonicon: Icons.video_call,
            buttonname: 'chat',
          ),
          verticaldivider,
          NewWidget(
            buttonaction: () {
              print("Gallery pressed");
            },
            buttoncolor: Colors.green,
            buttonicon: Icons.image_search,
            buttonname: 'image',
          ),
        ],
      ),
    );
  }
}
