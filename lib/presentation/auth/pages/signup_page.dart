import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/enter_password.dart';
import 'package:ecommerce_app/presentation/auth/pages/signin_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar(
          hideBack: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signinText(context),
              const SizedBox(height: 20),
              _firstNameField(context),
              const SizedBox(height: 20),
              _lastNameField(context),
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
    return Text("Sign Up",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold));
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Email"),
    );
  }
  Widget _firstNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter first name"),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter last name"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, EnterPasswordPage());
      },
      title: "Continue",
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Do you have an account? "),
        TextSpan(
            text: "Login",
            style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SigninPage());
              })
      ]),
    );
  }
}
