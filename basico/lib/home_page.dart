import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Básico")),
      body: Center(
        child: Icon(
          Icons.pedal_bike,
          size: 120,
          shadows: kElevationToShadow[3],
        ),
      ),
    );
  }
}
