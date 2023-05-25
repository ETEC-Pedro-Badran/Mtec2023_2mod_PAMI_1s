import 'package:flutter/material.dart';
import 'package:loja/app.dart';
import 'package:loja/drawer_widget.dart';

import 'avatar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("LOJA MTEc-DS"),
        actions: [LogoAvatar()],
        automaticallyImplyLeading: false,
      ),
      drawer: DrawerWidget(),
    );
  }

  LogoAvatar() {
    return GestureDetector(
        onTap: () {
          _key.currentState!.openDrawer();
        },
        child: Avatar());
  }
}
