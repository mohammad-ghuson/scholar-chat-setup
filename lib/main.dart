import 'package:flutter/material.dart';
import 'package:scholar_chat/pages/login_page.dart';
import 'package:scholar_chat/pages/register_page.dart';

void main() {
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
      },
      initialRoute: LoginPage.id,
    );
  }
}
