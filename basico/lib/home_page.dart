import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Básico")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.pedal_bike,
                size: 120,
                shadows: kElevationToShadow[3],
              ),
              Text("Tenha um ótimo dia!"),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Muito obrigado!")));
                  },
                  child: Text("Agradecer!"))
            ],
          ),
        ],
      ),
    );
  }
}
