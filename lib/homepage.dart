import 'package:facebook/Sections/buttonsection.dart';
import 'package:facebook/Sections/outlinesection.dart';
import 'package:facebook/Sections/statussection.dart';
import 'package:facebook/Sections/storysection.dart';
import 'Sections/appbarbutton.dart';
import 'package:flutter/material.dart';
//import 'appbarSection/appbarbutton.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 4,
      color: Colors.grey[300],
    );
    var thickdivider = Divider(
      thickness: 15,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'facebook',
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          actions: [
            appBarButton(
              myicon: Icons.search,
              buttonaction: () {
                print('search button pressed');
              },
            ),
            SizedBox(width: 2),
            appBarButton(
              myicon: Icons.menu,
              buttonaction: () {
                print('menu button pressed');
              },
            ),
          ],
        ),
        body: ListView(
          children: [
            statussection(),
            SizedBox(height: 10),
            thindivider,
            ButtonSection(),
            thickdivider,
            OutlineSection(),
            thickdivider,
            StorySection(),

          ],
        ),
      ),
    );
  }
}