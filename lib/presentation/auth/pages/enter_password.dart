import 'package:ecommerce_app/common/helper/navigator/app_navigator.dart';
import 'package:ecommerce_app/common/widgets/appbar/app_bar.dart';
import 'package:ecommerce_app/common/widgets/button/basic_app_button.dart';
import 'package:ecommerce_app/presentation/auth/pages/forgot_password_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BasicAppbar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _signinText(context),
              const SizedBox(height: 20),
              _passwordField(context),
              const SizedBox(height: 20),
              _continueButton(context),
              const SizedBox(height: 20),
              _forgotPassword(context)
            ],
          ),
        ));
  }

  Widget _signinText(BuildContext context) {
    return Text("Enter Password",
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold));
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(hintText: "Enter Password"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        
      },
      title: "Continue",
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(text: "Forgot Password? "),
        TextSpan(
            text: "Reset",
            style: TextStyle(fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()..onTap = () {
                AppNavigator.push(context, ForgotPasswordPage());
            })
      ]),
    );
  }
}
