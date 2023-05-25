import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey,
          boxShadow: kElevationToShadow[2]),
      child: Icon(
        Icons.person,
        size: 50,
      ),
    );
  }
}
