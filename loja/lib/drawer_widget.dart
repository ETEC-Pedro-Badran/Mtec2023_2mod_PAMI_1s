import 'package:flutter/material.dart';

import 'avatar_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        Card(
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(children: [
                    Avatar(),
                    Text(
                      "Aluno",
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "aluno@etec.sp.gov.br",
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
                  Positioned(
                    right: -5,
                    top: -5,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/perfil");
                        },
                        icon: Icon(
                          shadows: kElevationToShadow[1],
                          Icons.settings_rounded,
                          color: Color.fromARGB(255, 253, 253, 253),
                        )),
                  ),
                ],
              ),
            )),
      ]),
    );
  }
}
