import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(width: 100, "imagens/logo.png"),
        LoginForm(),
      ]),
    );
  }
}
