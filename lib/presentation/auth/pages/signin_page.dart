import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _signinText(context),
          const SizedBox(height: 20),
          _emailField(context),
          const SizedBox(height: 20),
          _continueButton(context),
          const SizedBox(height: 20),
          _createAccount(context)
        ],
      ),
    ));
  }

  Widget _signinText(BuildContext context) {
    return Text("Sign In",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold));
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Email"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {},
      title: "Continue",
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Do you have an account? "),
        TextSpan(
          text: "Create one",
          style: TextStyle(fontWeight: FontWeight.bold),
          recognizer: TapGestureRecognizer()..onTap=(){
            
          }
        )
      ]),
    );
  }
}
