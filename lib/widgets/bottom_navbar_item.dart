import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/icon_home.png',
          width: 26,
        )
      ],
    );
  }
}
