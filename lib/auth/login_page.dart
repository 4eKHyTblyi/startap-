import 'package:flutter/material.dart';
import 'package:startap/auth/register_page.dart';
import 'package:startap/helper/helper.dart';
import 'package:startap/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _fioController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfrimController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "Авторизация",
              style: HelperFunctions().h1,
            ),
            HelperFunctions.inputTemplate("Логин",
                "Введите логин с сайта uc1.1c.ru", context, _fioController),
            HelperFunctions.inputTemplate(
                "Пароль", "Введите пароль", context, _passwordController),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {
                  HelperFunctions().nextScreenReplace(context, HomePage());
                },
                child: Text(
                  "ВОЙТИ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Нет аккаунта?  ',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      HelperFunctions()
                          .nextScreenReplace(context, RegisterPage());
                    },
                    child: const Text(
                      'Зарегистрироваться',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
