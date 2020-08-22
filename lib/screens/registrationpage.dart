import 'package:flutter/material.dart';

import '../constant_styles.dart';
import '../styled_components.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registrationpage';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Container(
            //   height: 200.0,
            //  child: Icon(
            //           Icons.message,
            //           size: 70,
            //           color: Color(0xFFEB1555),
            //         ),
            // ),
            Column(
              children: [
                Icon(
                  Icons.message,
                  size: 70,
                  color: Color(0xFFEB1555),
                ),
                Text(
                  'Let\'s chat',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFEB1555),
                      fontFamily: 'Pacifico-Regular'),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
             TextField(
              onChanged: (value) {
                //Do something with the user input.
                name = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Fullname',),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
                email = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                // TODO: We have to Do something with the user input here
                password = value;
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButtonStyle(title: 'Sign Up', colour: Color(0xFF1D1E33),),
          ],
        ),
      ),
    );
  }
}
