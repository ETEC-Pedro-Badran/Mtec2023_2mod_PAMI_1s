import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _visivel = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  label: Text("Senha"),
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _visivel = !_visivel;
                        });

                        print(_visivel);
                      },
                      icon: Icon((_visivel
                          ? Icons.visibility_off
                          : Icons.visibility))),
                  border: OutlineInputBorder()),
              obscureText: !_visivel,
            )
          ],
        ),
      ),
    );
  }
}
