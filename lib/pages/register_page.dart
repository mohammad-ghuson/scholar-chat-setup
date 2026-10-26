import 'package:flutter/material.dart';
import 'package:scholar_chat/constant.dart';
import 'package:scholar_chat/widgets/custom_button.dart';
import 'package:scholar_chat/widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  static String id = 'registerPage';

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
            // Spacer(
            //   flex: 2,
            // ),
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
            SizedBox(
              height: 75,
            ),
            Row(
              children: [
                Text(
                  'REGISTER',
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
              text: 'REGISTER',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account ?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    ' login',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                    ),
                  ),
                ),
              ],
            ),
            // Spacer(
            //   flex: 3,
            // )
          ],
        ),
      ),
    );
  }
}
