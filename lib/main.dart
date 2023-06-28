import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:service_app/screens/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        OnBordingScreen.id:(context)=>OnBordingScreen(),
      },
    );
  }
}
class SplashScreen extends StatefulWidget {

  static const String id = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Timer(Duration(
     seconds: 3
   ),()=>Navigator.pushReplacementNamed(context, OnBordingScreen.id));
    super.initState();
  }
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays: []);
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Image.asset('assets/images/a.png',width: 200,height: 200,),

      ),
    );
  }
}
