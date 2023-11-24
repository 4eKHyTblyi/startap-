import 'package:flutter/material.dart';
import 'package:startap/auth/login_page.dart';
import 'package:startap/helper/helper.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
              "Регистрация",
              style: HelperFunctions().h1,
            ),
            HelperFunctions.inputTemplate(
                "ФИО", "Иванов Иван Иванович", context, _fioController),
            HelperFunctions.inputTemplate(
                "Email", "Email", context, _emailController),
            HelperFunctions.inputTemplate(
                "Пароль", "Пароль", context, _passwordController),
            HelperFunctions.inputTemplate("Повторите пароль",
                "Повторите пароль", context, _passwordConfrimController),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {},
                child: Text(
                  "ЗАРЕГИСТРИРОВАТЬСЯ",
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
                  'Уже есть аккаунт?',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                TextButton(
                    onPressed: () {
                      HelperFunctions().nextScreenReplace(context, LoginPage());
                    },
                    child: const Text(
                      'Войти',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ))
              ],
            ),
            const Text(
              'Нажимая «Зарегистрироваться», вы принимаете пользовательское соглашение и политику конфиденциальности',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}
