import 'package:flutter/material.dart';
import 'package:scholar_chat/constant.dart';
import 'package:scholar_chat/pages/register_page.dart';
import 'package:scholar_chat/widgets/custom_button.dart';
import 'package:scholar_chat/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static String id = 'loginPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: ListView(
          children: [
            /*Spacer(
              flex: 2,
            ),*/
            SizedBox(
              height: 75,
            ),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontFamily: 'Pacifico'),
                ),
              ],
            ),
            /*Spacer(
              flex: 2,
            ),*/
            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'LOGIN',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account ?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    ' Register',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                    ),
                  ),
                ),
              ],
            ),
            /*Spacer(
              flex: 3,
            ),*/
          ],
        ),
      ),
    );
  }
}
