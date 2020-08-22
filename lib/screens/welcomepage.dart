 import 'package:flutter/material.dart';

import '../styled_components.dart';
import 'package:chat_app/screens/chatpage.dart';
import 'package:chat_app/screens/registrationpage.dart';
import 'package:chat_app/screens/signin.dart';

class WelcomePage extends StatefulWidget {
  static const String id = 'welcomepage';
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0A0E21),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
             Hero(
               tag: 'Logo',
               child: LogoStyle()),
              RoundedButtonStyle(title: 'Log In', colour: Color(0xFF1D1E33),),
              RoundedButtonStyle(title: 'Sign Up', colour: Color(0xFF1D1E33),),
            ],
          ),
        ),
      ),
      initialRoute:WelcomePage.id,
      routes: {
       // WelcomePage.id: (context) => WelcomePage(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        SignIn.id: (context) => SignIn(),
      },
    );
  }
}
