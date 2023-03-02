import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("App Básico")),
      body: Center(
        child: Icon(
          Icons.pedal_bike,
          size: 120,
          shadows: kElevationToShadow[3],
        ),
      ),
    ),
  ));
}
