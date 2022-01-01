import 'package:flutter/material.dart';

class appBarButton extends StatelessWidget {
  final IconData myicon;
  final void Function() buttonaction;
  appBarButton({required this.myicon, required this.buttonaction});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: EdgeInsets.all(2),
      child: IconButton(
        icon: Icon(
          myicon,
          color: Colors.black,
          size: 20,
        ),
        onPressed: buttonaction,
        
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}


