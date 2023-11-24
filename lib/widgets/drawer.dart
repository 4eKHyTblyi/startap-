import 'package:flutter/material.dart';

class DrawerMy extends StatefulWidget {
  const DrawerMy({super.key});

  @override
  State<DrawerMy> createState() => _DrawerMyState();
}

class _DrawerMyState extends State<DrawerMy> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
    ));
  }
}
