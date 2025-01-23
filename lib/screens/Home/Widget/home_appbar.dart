import 'package:flutter/material.dart';
import 'package:app/constraints.dart';

class HomeAppbar extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {
            // Add your logic here
          },
          icon: Image.asset('images/icon.png', height: 20),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: kcontentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {
            // Add your logic here
          },
          icon: Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
