import 'package:flutter/material.dart';
import 'package:chat_app/screens/splashscreen.dart';
import 'screens/welcomepage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Splash(),
              ),
              
            );
          }
        }

        //A splash screen to introduce user to the app
 class Splash extends StatefulWidget {
   const Splash({ 
     Key key,
   }) : super(key: key);

   @override
   _SplashState createState() => _SplashState();
 }
 
 class _SplashState extends State<Splash> {
   @override
   
  void initState() {
    loadSplash();
    super.initState();
  }
   loadSplash() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ),
    );
  }

   Widget build(BuildContext context) {
     return Scaffold(
       body: SplashScreen()
       
     );

     
   }
 }