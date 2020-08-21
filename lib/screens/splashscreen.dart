import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.message, size: 70.0, color: Color(0xFFEB1555),),
            // Image(
            //   image: AssetImage('images/logo.png'),
            // ),
            SizedBox(height: 5.0),
            Text(
              'Let\'s chat',
              style: TextStyle(
               // fontWeight: FontWeight.bold,
                fontSize: 40.0,
                fontFamily: 'Pacifico-Regular',
                color: Color(0xFFEB1555),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


