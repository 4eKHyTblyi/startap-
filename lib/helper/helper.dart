import 'package:flutter/material.dart';

class HelperFunctions {
  TextStyle h1 = const TextStyle(
      color: Colors.black,
      fontSize: 38,
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto');

  TextStyle h2 = const TextStyle(
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto');

  static Widget inputTemplate(String label, String hintText,
      BuildContext context, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontFamily: 'Roboto', color: Colors.grey.shade700),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300, width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto', color: Colors.grey.shade500),
                  border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }

  void nextScreen(BuildContext context, page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  void nextScreenReplace(context, page) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => page));
  }

  void showSnackBar(String value, BuildContext context, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(value),
      backgroundColor: color,
    ));
  }

  showDrawer(context) {
    Scaffold.of(context).openDrawer();
  }

  Widget trenager(title, questions, price) {
    return Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromRGBO(240, 242, 246, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            title,
            style: h2,
          ),
          Text('Количество вопросов: $questions',
              style: TextStyle(fontSize: 20)),
          Text('Цена: $price ₽'),
        ]));
  }
}
