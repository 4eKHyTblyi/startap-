import 'package:flutter/material.dart';
import 'package:startap/helper/helper.dart';
import 'package:startap/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Логотип'), centerTitle: true, actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            )),
      ]),
      drawer: DrawerMy(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
            child: Column(children: [
          HelperFunctions().trenager("Тренажеры", "900", "1000"),
        ])),
      ),
    );
  }
}
