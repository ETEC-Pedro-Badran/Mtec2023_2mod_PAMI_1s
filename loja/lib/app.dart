import 'package:flutter/material.dart';

import 'login_page.dart';
import 'registro_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/registro": (context) => RegistroPage()
      },
    );
  }
}
