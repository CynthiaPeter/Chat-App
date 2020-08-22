import 'package:flutter/material.dart';

import '../constant_styles.dart';
import '../styled_components.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Icon(
                Icons.message,
                size: 70,
                color: Color(0xFFEB1555),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
           RoundedButtonStyle(title: 'Sign In', colour: Color(0xFF1D1E33),),
          ],
        ),
      ),
    );
  }
}
